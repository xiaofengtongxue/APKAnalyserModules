.class public Lorg/apache/http/impl/BHttpConnectionBase;
.super Ljava/lang/Object;
.source "BHttpConnectionBase.java"

# interfaces
.implements Lorg/apache/http/HttpConnection;
.implements Lorg/apache/http/HttpInetConnection;


# annotations
.annotation build Lorg/apache/http/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private final inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

.field private final incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private volatile open:Z

.field private final outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

.field private final outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

.field private volatile socket:Ljava/net/Socket;


# direct methods
.method protected constructor <init>(IILjava/nio/charset/CharsetDecoder;Ljava/nio/charset/CharsetEncoder;Lorg/apache/http/config/MessageConstraints;Lorg/apache/http/entity/ContentLengthStrategy;Lorg/apache/http/entity/ContentLengthStrategy;)V
    .registers 15
    .param p1, "buffersize"    # I
    .param p2, "fragmentSizeHint"    # I
    .param p3, "chardecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "charencoder"    # Ljava/nio/charset/CharsetEncoder;
    .param p5, "constraints"    # Lorg/apache/http/config/MessageConstraints;
    .param p6, "incomingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;
    .param p7, "outgoingContentStrategy"    # Lorg/apache/http/entity/ContentLengthStrategy;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const-string v0, "Buffer size"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->positive(ILjava/lang/String;)I

    .line 114
    new-instance v1, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v1}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 115
    .local v1, "inTransportMetrics":Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    new-instance v6, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v6}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    .line 116
    .local v6, "outTransportMetrics":Lorg/apache/http/impl/io/HttpTransportMetricsImpl;
    new-instance v0, Lorg/apache/http/impl/io/SessionInputBufferImpl;

    const/4 v3, -0x1

    if-eqz p5, :cond_36

    move-object v4, p5

    :goto_18
    move v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/http/impl/io/SessionInputBufferImpl;-><init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILorg/apache/http/config/MessageConstraints;Ljava/nio/charset/CharsetDecoder;)V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    .line 118
    new-instance v0, Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-direct {v0, v6, p1, p2, p4}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;-><init>(Lorg/apache/http/impl/io/HttpTransportMetricsImpl;IILjava/nio/charset/CharsetEncoder;)V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    .line 120
    new-instance v0, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, v1, v6}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 121
    if-eqz p6, :cond_39

    .end local p6    # "incomingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :goto_2f
    iput-object p6, p0, Lorg/apache/http/impl/BHttpConnectionBase;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 123
    if-eqz p7, :cond_3c

    .end local p7    # "outgoingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :goto_33
    iput-object p7, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    .line 125
    return-void

    .line 116
    .restart local p6    # "incomingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    .restart local p7    # "outgoingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :cond_36
    sget-object v4, Lorg/apache/http/config/MessageConstraints;->DEFAULT:Lorg/apache/http/config/MessageConstraints;

    goto :goto_18

    .line 121
    :cond_39
    sget-object p6, Lorg/apache/http/impl/entity/LaxContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/LaxContentLengthStrategy;

    goto :goto_2f

    .line 123
    .end local p6    # "incomingContentStrategy":Lorg/apache/http/entity/ContentLengthStrategy;
    :cond_3c
    sget-object p7, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;->INSTANCE:Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    goto :goto_33
.end method

.method private fillInputBuffer(I)I
    .registers 5
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0

    .line 335
    .local v0, "oldtimeout":I
    :try_start_6
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 336
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->fillBuffer()I
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_17

    move-result v1

    .line 338
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    return v1

    :catchall_17
    move-exception v1

    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v1
.end method


# virtual methods
.method protected awaitInput(I)Z
    .registers 3
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 344
    const/4 v0, 0x1

    .line 347
    :goto_9
    return v0

    .line 346
    :cond_a
    invoke-direct {p0, p1}, Lorg/apache/http/impl/BHttpConnectionBase;->fillInputBuffer(I)I

    .line 347
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->hasBufferedData()Z

    move-result v0

    goto :goto_9
.end method

.method protected bind(Ljava/net/Socket;)V
    .registers 4
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 156
    const-string v0, "Socket"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    iput-object p1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->open:Z

    .line 159
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bind(Ljava/io/InputStream;)V

    .line 160
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bind(Ljava/io/OutputStream;)V

    .line 161
    return-void
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    iget-boolean v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->open:Z

    if-nez v1, :cond_5

    .line 330
    :goto_4
    return-void

    .line 310
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->open:Z

    .line 311
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    .line 313
    .local v0, "sock":Ljava/net/Socket;
    :try_start_a
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->clear()V

    .line 314
    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flush()V
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_1e

    .line 317
    :try_start_14
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_23
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_17} :catch_27
    .catchall {:try_start_14 .. :try_end_17} :catchall_1e

    .line 321
    :goto_17
    :try_start_17
    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_25
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_17 .. :try_end_1a} :catch_27
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1e

    .line 328
    :goto_1a
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_4

    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    throw v1

    .line 318
    :catch_23
    move-exception v1

    goto :goto_17

    .line 322
    :catch_25
    move-exception v1

    goto :goto_1a

    .line 324
    :catch_27
    move-exception v1

    goto :goto_1a
.end method

.method protected createInputStream(JLorg/apache/http/io/SessionInputBuffer;)Ljava/io/InputStream;
    .registers 7
    .param p1, "len"    # J
    .param p3, "inbuffer"    # Lorg/apache/http/io/SessionInputBuffer;

    .prologue
    .line 203
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_c

    .line 204
    new-instance v0, Lorg/apache/http/impl/io/ChunkedInputStream;

    invoke-direct {v0, p3}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    .line 208
    :goto_b
    return-object v0

    .line 205
    :cond_c
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_18

    .line 206
    new-instance v0, Lorg/apache/http/impl/io/IdentityInputStream;

    invoke-direct {v0, p3}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    goto :goto_b

    .line 208
    :cond_18
    new-instance v0, Lorg/apache/http/impl/io/ContentLengthInputStream;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    goto :goto_b
.end method

.method protected createOutputStream(JLorg/apache/http/io/SessionOutputBuffer;)Ljava/io/OutputStream;
    .registers 7
    .param p1, "len"    # J
    .param p3, "outbuffer"    # Lorg/apache/http/io/SessionOutputBuffer;

    .prologue
    .line 186
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_e

    .line 187
    new-instance v0, Lorg/apache/http/impl/io/ChunkedOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1, p3}, Lorg/apache/http/impl/io/ChunkedOutputStream;-><init>(ILorg/apache/http/io/SessionOutputBuffer;)V

    .line 191
    :goto_d
    return-object v0

    .line 188
    :cond_e
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1a

    .line 189
    new-instance v0, Lorg/apache/http/impl/io/IdentityOutputStream;

    invoke-direct {v0, p3}, Lorg/apache/http/impl/io/IdentityOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;)V

    goto :goto_d

    .line 191
    :cond_1a
    new-instance v0, Lorg/apache/http/impl/io/ContentLengthOutputStream;

    invoke-direct {v0, p3, p1, p2}, Lorg/apache/http/impl/io/ContentLengthOutputStream;-><init>(Lorg/apache/http/io/SessionOutputBuffer;J)V

    goto :goto_d
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->flush()V

    .line 173
    return-void
.end method

.method protected ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-boolean v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->open:Z

    const-string v1, "Connection is not open"

    invoke-static {v0, v1}, Lorg/apache/http/util/Asserts;->check(ZLjava/lang/String;)V

    .line 129
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 130
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/BHttpConnectionBase;->getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/io/SessionInputBufferImpl;->bind(Ljava/io/InputStream;)V

    .line 132
    :cond_1a
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->isBound()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 133
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    iget-object v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {p0, v1}, Lorg/apache/http/impl/BHttpConnectionBase;->getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/io/SessionOutputBufferImpl;->bind(Ljava/io/OutputStream;)V

    .line 135
    :cond_2d
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 244
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 246
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLocalPort()I
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    .line 254
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 260
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 262
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getRemotePort()I
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_b

    .line 268
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    .line 270
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method protected getSessionInputBuffer()Lorg/apache/http/io/SessionInputBuffer;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    return-object v0
.end method

.method protected getSessionOutputBuffer()Lorg/apache/http/io/SessionOutputBuffer;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    return-object v0
.end method

.method protected getSocket()Ljava/net/Socket;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method protected getSocketInputStream(Ljava/net/Socket;)Ljava/io/InputStream;
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method protected getSocketOutputStream(Ljava/net/Socket;)Ljava/io/OutputStream;
    .registers 3
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSocketTimeout()I
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 287
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_b

    .line 289
    :try_start_5
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_a} :catch_c

    move-result v1

    .line 294
    :cond_b
    :goto_b
    return v1

    .line 290
    :catch_c
    move-exception v0

    .line 291
    .local v0, "ignore":Ljava/net/SocketException;
    goto :goto_b
.end method

.method protected incrementRequestCount()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 366
    return-void
.end method

.method protected incrementResponseCount()V
    .registers 2

    .prologue
    .line 369
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->connMetrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 370
    return-void
.end method

.method public isOpen()Z
    .registers 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->open:Z

    return v0
.end method

.method public isStale()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 351
    invoke-virtual {p0}, Lorg/apache/http/impl/BHttpConnectionBase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_9

    .line 360
    :cond_8
    :goto_8
    return v2

    .line 355
    :cond_9
    const/4 v4, 0x1

    :try_start_a
    invoke-direct {p0, v4}, Lorg/apache/http/impl/BHttpConnectionBase;->fillInputBuffer(I)I
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_15

    move-result v0

    .line 356
    .local v0, "bytesRead":I
    if-ltz v0, :cond_8

    move v2, v3

    goto :goto_8

    .line 357
    .end local v0    # "bytesRead":I
    :catch_12
    move-exception v1

    .local v1, "ex":Ljava/net/SocketTimeoutException;
    move v2, v3

    .line 358
    goto :goto_8

    .line 359
    .end local v1    # "ex":Ljava/net/SocketTimeoutException;
    :catch_15
    move-exception v1

    .line 360
    .local v1, "ex":Ljava/io/IOException;
    goto :goto_8
.end method

.method protected prepareInput(Lorg/apache/http/HttpMessage;)Lorg/apache/http/HttpEntity;
    .registers 13
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    .line 213
    new-instance v2, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v2}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 215
    .local v2, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    iget-object v6, p0, Lorg/apache/http/impl/BHttpConnectionBase;->incomingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v6, p1}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v4

    .line 216
    .local v4, "len":J
    iget-object v6, p0, Lorg/apache/http/impl/BHttpConnectionBase;->inbuffer:Lorg/apache/http/impl/io/SessionInputBufferImpl;

    invoke-virtual {p0, v4, v5, v6}, Lorg/apache/http/impl/BHttpConnectionBase;->createInputStream(JLorg/apache/http/io/SessionInputBuffer;)Ljava/io/InputStream;

    move-result-object v3

    .line 217
    .local v3, "instream":Ljava/io/InputStream;
    const-wide/16 v6, -0x2

    cmp-long v6, v4, v6

    if-nez v6, :cond_3b

    .line 218
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 219
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 220
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 231
    :goto_24
    const-string v6, "Content-Type"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 232
    .local v1, "contentTypeHeader":Lorg/apache/http/Header;
    if-eqz v1, :cond_2f

    .line 233
    invoke-virtual {v2, v1}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 235
    :cond_2f
    const-string v6, "Content-Encoding"

    invoke-interface {p1, v6}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 236
    .local v0, "contentEncodingHeader":Lorg/apache/http/Header;
    if-eqz v0, :cond_3a

    .line 237
    invoke-virtual {v2, v0}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    .line 239
    :cond_3a
    return-object v2

    .line 221
    .end local v0    # "contentEncodingHeader":Lorg/apache/http/Header;
    .end local v1    # "contentTypeHeader":Lorg/apache/http/Header;
    :cond_3b
    cmp-long v6, v4, v8

    if-nez v6, :cond_49

    .line 222
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 223
    invoke-virtual {v2, v8, v9}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 224
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_24

    .line 226
    :cond_49
    invoke-virtual {v2, v10}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 227
    invoke-virtual {v2, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 228
    invoke-virtual {v2, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_24
.end method

.method protected prepareOutput(Lorg/apache/http/HttpMessage;)Ljava/io/OutputStream;
    .registers 5
    .param p1, "message"    # Lorg/apache/http/HttpMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outgoingContentStrategy:Lorg/apache/http/entity/ContentLengthStrategy;

    invoke-interface {v2, p1}, Lorg/apache/http/entity/ContentLengthStrategy;->determineLength(Lorg/apache/http/HttpMessage;)J

    move-result-wide v0

    .line 197
    .local v0, "len":J
    iget-object v2, p0, Lorg/apache/http/impl/BHttpConnectionBase;->outbuffer:Lorg/apache/http/impl/io/SessionOutputBufferImpl;

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/http/impl/BHttpConnectionBase;->createOutputStream(JLorg/apache/http/io/SessionOutputBuffer;)Ljava/io/OutputStream;

    move-result-object v2

    return-object v2
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .prologue
    .line 275
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 277
    :try_start_4
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_9} :catch_a

    .line 284
    :cond_9
    :goto_9
    return-void

    .line 278
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public shutdown()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/BHttpConnectionBase;->open:Z

    .line 300
    iget-object v0, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    .line 301
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_a

    .line 302
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 304
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 378
    iget-object v3, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    if-eqz v3, :cond_29

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "buffer":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    .line 381
    .local v2, "remoteAddress":Ljava/net/SocketAddress;
    iget-object v3, p0, Lorg/apache/http/impl/BHttpConnectionBase;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 382
    .local v1, "localAddress":Ljava/net/SocketAddress;
    if-eqz v2, :cond_24

    if-eqz v1, :cond_24

    .line 383
    invoke-static {v0, v1}, Lorg/apache/http/util/NetUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 384
    const-string v3, "<->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {v0, v2}, Lorg/apache/http/util/NetUtils;->formatAddress(Ljava/lang/StringBuilder;Ljava/net/SocketAddress;)V

    .line 387
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "localAddress":Ljava/net/SocketAddress;
    .end local v2    # "remoteAddress":Ljava/net/SocketAddress;
    :goto_28
    return-object v3

    :cond_29
    const-string v3, "[Not bound]"

    goto :goto_28
.end method
