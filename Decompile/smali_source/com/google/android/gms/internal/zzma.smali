.class public Lcom/google/android/gms/internal/zzma;
.super Ljava/lang/Object;


# static fields
.field private static final zzagh:Ljava/lang/reflect/Method;

.field private static final zzagi:Ljava/lang/reflect/Method;

.field private static final zzagj:Ljava/lang/reflect/Method;

.field private static final zzagk:Ljava/lang/reflect/Method;

.field private static final zzagl:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/android/gms/internal/zzma;->zzpZ()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzma;->zzagh:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzma;->zzqa()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzma;->zzagi:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzma;->zzqb()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzma;->zzagj:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzma;->zzqc()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzma;->zzagk:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/zzma;->zzqd()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzma;->zzagl:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static zza(Landroid/os/WorkSource;)I
    .registers 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagj:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1d

    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagj:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_15

    move-result v0

    :goto_14
    return v0

    :catch_15
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v2, "Unable to assign blame through WorkSource"

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move v0, v1

    goto :goto_14
.end method

.method public static zza(Landroid/os/WorkSource;I)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagl:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1f

    :try_start_4
    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagl:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_16} :catch_17

    :goto_16
    return-object v0

    :catch_17
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v1, "Unable to assign blame through WorkSource"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static zza(Landroid/os/WorkSource;ILjava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagi:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_24

    if-nez p2, :cond_8

    const-string p2, ""

    :cond_8
    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagi:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    :cond_1a
    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v1, "Unable to assign blame through WorkSource"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_24
    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagh:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1a

    :try_start_28
    sget-object v0, Lcom/google/android/gms/internal/zzma;->zzagh:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_37} :catch_38

    goto :goto_1a

    :catch_38
    move-exception v0

    const-string v0, "WorkSourceUtil"

    const-string v1, "Unable to assign blame through WorkSource"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static zzaq(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static zzb(Landroid/os/WorkSource;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p0, :cond_9

    move v2, v1

    :goto_4
    if-nez v2, :cond_f

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_8
    return-object v0

    :cond_9
    invoke-static {p0}, Lcom/google/android/gms/internal/zzma;->zza(Landroid/os/WorkSource;)I

    move-result v0

    move v2, v0

    goto :goto_4

    :cond_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_14
    if-ge v1, v2, :cond_8

    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzma;->zza(Landroid/os/WorkSource;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/zzlz;->zzcB(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method public static zze(ILjava/lang/String;)Landroid/os/WorkSource;
    .registers 3

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/zzma;->zza(Landroid/os/WorkSource;ILjava/lang/String;)V

    return-object v0
.end method

.method public static zzj(Landroid/content/Context;Ljava/lang/String;)Landroid/os/WorkSource;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_28

    move-result-object v1

    if-nez v1, :cond_42

    const-string v1, "WorkSourceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get applicationInfo from package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_28
    move-exception v1

    const-string v1, "WorkSourceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_42
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzma;->zze(ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v0

    goto :goto_3
.end method

.method private static zzpZ()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static zzqa()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzlv;->zzpU()Z

    move-result v1

    if-eqz v1, :cond_1c

    :try_start_7
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "add"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_1d

    move-result-object v0

    :cond_1c
    :goto_1c
    return-object v0

    :catch_1d
    move-exception v1

    goto :goto_1c
.end method

.method private static zzqb()Ljava/lang/reflect/Method;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "size"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-result-object v0

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    goto :goto_c
.end method

.method private static zzqc()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    :goto_11
    return-object v0

    :catch_12
    move-exception v1

    goto :goto_11
.end method

.method private static zzqd()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/zzlv;->zzpU()Z

    move-result v1

    if-eqz v1, :cond_17

    :try_start_7
    const-class v1, Landroid/os/WorkSource;

    const-string v2, "getName"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object v0

    :cond_17
    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    goto :goto_17
.end method
