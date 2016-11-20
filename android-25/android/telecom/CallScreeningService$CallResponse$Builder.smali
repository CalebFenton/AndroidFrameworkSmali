.class public Landroid/telecom/CallScreeningService$CallResponse$Builder;
.super Ljava/lang/Object;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService$CallResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mShouldDisallowCall:Z

.field private mShouldRejectCall:Z

.field private mShouldSkipCallLog:Z

.field private mShouldSkipNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/CallScreeningService$CallResponse;
    .locals 6

    #@0
    .prologue
    .line 185
    new-instance v0, Landroid/telecom/CallScreeningService$CallResponse;

    #@2
    .line 186
    iget-boolean v1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    #@4
    .line 187
    iget-boolean v2, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    #@6
    .line 188
    iget-boolean v3, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    #@8
    .line 189
    iget-boolean v4, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    #@a
    .line 185
    const/4 v5, 0x0

    #@b
    invoke-direct/range {v0 .. v5}, Landroid/telecom/CallScreeningService$CallResponse;-><init>(ZZZZLandroid/telecom/CallScreeningService$CallResponse;)V

    #@e
    return-object v0
.end method

.method public setDisallowCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldDisallowCall"    # Z

    #@0
    .prologue
    .line 153
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldDisallowCall:Z

    #@2
    .line 154
    return-object p0
.end method

.method public setRejectCall(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldRejectCall"    # Z

    #@0
    .prologue
    .line 162
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldRejectCall:Z

    #@2
    .line 163
    return-object p0
.end method

.method public setSkipCallLog(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSkipCallLog"    # Z

    #@0
    .prologue
    .line 171
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipCallLog:Z

    #@2
    .line 172
    return-object p0
.end method

.method public setSkipNotification(Z)Landroid/telecom/CallScreeningService$CallResponse$Builder;
    .locals 0
    .param p1, "shouldSkipNotification"    # Z

    #@0
    .prologue
    .line 180
    iput-boolean p1, p0, Landroid/telecom/CallScreeningService$CallResponse$Builder;->mShouldSkipNotification:Z

    #@2
    .line 181
    return-object p0
.end method
