.class public abstract Lcom/facebook/ads/internal/adapters/b;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/facebook/ads/internal/adapters/c;

.field private final b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/b;->a:Lcom/facebook/ads/internal/adapters/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b;->c:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b;->a:Lcom/facebook/ads/internal/adapters/c;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/c;->d()V

    :cond_e
    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/b;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/b;->c:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b;->b:Landroid/content/Context;

    const-string v1, "Impression logged"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/util/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b;->a:Lcom/facebook/ads/internal/adapters/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b;->a:Lcom/facebook/ads/internal/adapters/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/c;->e()V

    goto :goto_4
.end method

.method protected abstract b()V
.end method
