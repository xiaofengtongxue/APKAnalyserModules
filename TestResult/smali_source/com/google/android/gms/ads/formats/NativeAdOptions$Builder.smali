.class public final Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/formats/NativeAdOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private zznV:Z

.field private zznW:I

.field private zznX:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznV:Z

    iput v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznW:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznX:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznV:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznW:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznX:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions;-><init>(Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;Lcom/google/android/gms/ads/formats/NativeAdOptions$1;)V

    return-object v0
.end method

.method public setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    iput p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznW:I

    return-object p0
.end method

.method public setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1, "shouldRequestMultipleImages"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznX:Z

    return-object p0
.end method

.method public setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;
    .registers 2
    .param p1, "shouldReturnUrls"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->zznV:Z

    return-object p0
.end method
