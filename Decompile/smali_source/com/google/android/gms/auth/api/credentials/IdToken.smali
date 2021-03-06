.class public final Lcom/google/android/gms/auth/api/credentials/IdToken;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzRf:Ljava/lang/String;

.field private final zzRn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/IdToken;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "version"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "idToken"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->zzRf:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->zzRn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccountType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->zzRf:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzd;->zza(Lcom/google/android/gms/auth/api/credentials/IdToken;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlv()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/IdToken;->zzRn:Ljava/lang/String;

    return-object v0
.end method
