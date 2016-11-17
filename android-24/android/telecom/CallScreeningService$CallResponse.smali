.class public Landroid/telecom/CallScreeningService$CallResponse;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallScreeningService$CallResponse$Builder;
    }
.end annotation


# instance fields
.field private final mShouldDisallowCall:Z

.field private final mShouldRejectCall:Z

.field private final mShouldSkipCallLog:Z

.field private final mShouldSkipNotification:Z


# direct methods
.method private constructor <init>(ZZZZ)V
    .locals 2
    .param p1, "shouldDisallowCall"    # Z
    .param p2, "shouldRejectCall"    # Z
    .param p3, "shouldSkipCallLog"    # Z
    .param p4, "shouldSkipNotification"    # Z

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    if-nez p1, :cond_1

    #@5
    .line 104
    if-nez p2, :cond_0

    #@7
    if-nez p3, :cond_0

    #@9
    .line 103
    if-eqz p4, :cond_1

    #@b
    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v1, "Invalid response state for allowed call."

    #@10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0

    #@14
    .line 108
    :cond_1
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    #@16
    .line 109
    iput-boolean p2, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    #@18
    .line 110
    iput-boolean p3, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    #@1a
    .line 111
    iput-boolean p4, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    #@1c
    .line 102
    return-void
.end method

.method synthetic constructor <init>(ZZZZLandroid/telecom/CallScreeningService$CallResponse;)V
    .locals 0
    .param p1, "shouldDisallowCall"    # Z
    .param p2, "shouldRejectCall"    # Z
    .param p3, "shouldSkipCallLog"    # Z
    .param p4, "shouldSkipNotification"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZ)V

    #@3
    return-void
.end method


# virtual methods
.method public getDisallowCall()Z
    .locals 1

    #@0
    .prologue
    .line 118
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldDisallowCall:Z

    #@2
    return v0
.end method

.method public getRejectCall()Z
    .locals 1

    #@0
    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldRejectCall:Z

    #@2
    return v0
.end method

.method public getSkipCallLog()Z
    .locals 1

    #@0
    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipCallLog:Z

    #@2
    return v0
.end method

.method public getSkipNotification()Z
    .locals 1

    #@0
    .prologue
    .line 140
    iget-boolean v0, p0, Landroid/telecom/CallScreeningService$CallResponse;->mShouldSkipNotification:Z

    #@2
    return v0
.end method
