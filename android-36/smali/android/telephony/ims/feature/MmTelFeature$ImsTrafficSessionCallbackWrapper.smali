.class public Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;
.super Ljava/lang/Object;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsTrafficSessionCallbackWrapper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;
    }
.end annotation


# static fields
.field public static final blacklist INVALID_TOKEN:I = -0x1

.field private static final blacklist MAX_TOKEN:I = 0x10000

.field private static final blacklist sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private blacklist mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

.field private blacklist mImsTrafficSessionCallback:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

.field private blacklist mToken:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 764
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    .line 769
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    .line 774
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mImsTrafficSessionCallback:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    .line 775
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Landroid/telephony/ims/feature/MmTelFeature-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;)V

    return-void
.end method

.method private static blacklist generateToken()I
    .registers 3

    .line 864
    sget-object v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 865
    .local v0, "token":I
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_10

    sget-object v1, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->sTokenGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 866
    :cond_10
    return v0
.end method


# virtual methods
.method final blacklist getCallbackBinder()Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;
    .registers 2

    .line 844
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    return-object v0
.end method

.method final blacklist getToken()I
    .registers 2

    .line 851
    iget v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    return v0
.end method

.method final blacklist reset()V
    .registers 2

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    .line 860
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    .line 861
    return-void
.end method

.method final blacklist update(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 784
    if-eqz p1, :cond_1c

    .line 789
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    if-nez v0, :cond_16

    .line 791
    new-instance v0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mImsTrafficSessionCallback:Landroid/telephony/ims/feature/ImsTrafficSessionCallback;

    invoke-direct {v0, v1, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;-><init>(Landroid/telephony/ims/feature/ImsTrafficSessionCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    .line 793
    invoke-static {}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->generateToken()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mToken:I

    goto :goto_1b

    .line 796
    :cond_16
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper;->mCallback:Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/feature/MmTelFeature$ImsTrafficSessionCallbackWrapper$IImsTrafficSessionCallbackStub;->update(Ljava/util/concurrent/Executor;)V

    .line 798
    :goto_1b
    return-void

    .line 785
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImsTrafficSessionCallback Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
