.class final enum Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;
.super Ljava/lang/Enum;
.source "PointCloud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/creativesdk/aviary/widget/PointCloud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "WaveType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

.field public static final enum Circle:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

.field public static final enum Ellipse:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

.field public static final enum Line:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 384
    new-instance v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    const-string v1, "Circle"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->Circle:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    new-instance v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    const-string v1, "Line"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->Line:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    new-instance v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    const-string v1, "Ellipse"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->Ellipse:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    .line 383
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    sget-object v1, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->Circle:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->Line:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->Ellipse:Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->$VALUES:[Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 383
    const-class v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;
    .registers 1

    .prologue
    .line 383
    sget-object v0, Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->$VALUES:[Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/aviary/widget/PointCloud$WaveType;

    return-object v0
.end method
