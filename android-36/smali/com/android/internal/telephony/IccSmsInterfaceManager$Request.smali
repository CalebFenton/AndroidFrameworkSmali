.class final Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;
.super Ljava/lang/Object;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Request"
.end annotation


# instance fields
.field blacklist mResult:Ljava/lang/Object;

.field blacklist mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor blacklist <init>()V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;-><init>()V

    return-void
.end method
