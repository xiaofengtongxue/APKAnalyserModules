.class public final Lrx/schedulers/TrampolineScheduler;
.super Lrx/Scheduler;
.source "TrampolineScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/schedulers/TrampolineScheduler$1;,
        Lrx/schedulers/TrampolineScheduler$TimedAction;,
        Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;
    }
.end annotation


# static fields
.field private static final INSTANCE:Lrx/schedulers/TrampolineScheduler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Lrx/schedulers/TrampolineScheduler;

    invoke-direct {v0}, Lrx/schedulers/TrampolineScheduler;-><init>()V

    sput-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$300(II)I
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-static {p0, p1}, Lrx/schedulers/TrampolineScheduler;->compare(II)I

    move-result v0

    return v0
.end method

.method private static compare(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 132
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method static instance()Lrx/schedulers/TrampolineScheduler;
    .registers 1

    .prologue
    .line 37
    sget-object v0, Lrx/schedulers/TrampolineScheduler;->INSTANCE:Lrx/schedulers/TrampolineScheduler;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .registers 3

    .prologue
    .line 42
    new-instance v0, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lrx/schedulers/TrampolineScheduler$InnerCurrentThreadScheduler;-><init>(Lrx/schedulers/TrampolineScheduler$1;)V

    return-object v0
.end method
