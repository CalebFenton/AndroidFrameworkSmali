.class public final Lcom/android/uiautomator/core/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sConfigurator:Lcom/android/uiautomator/core/Configurator;


# instance fields
.field private mKeyInjectionDelay:J

.field private mScrollEventWaitTimeout:J

.field private mWaitForActionAcknowledgment:J

.field private mWaitForIdleTimeout:J

.field private mWaitForSelector:J


# direct methods
.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const-wide/16 v0, 0x2710

    #@2
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 33
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    #@7
    .line 34
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    #@9
    .line 35
    const-wide/16 v0, 0xbb8

    #@b
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    #@d
    .line 39
    const-wide/16 v0, 0xc8

    #@f
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    #@11
    .line 42
    const-wide/16 v0, 0x0

    #@13
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    #@15
    .line 47
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Configurator;
    .locals 1

    #@0
    .prologue
    .line 58
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 59
    new-instance v0, Lcom/android/uiautomator/core/Configurator;

    #@6
    invoke-direct {v0}, Lcom/android/uiautomator/core/Configurator;-><init>()V

    #@9
    sput-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    #@b
    .line 61
    :cond_0
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    #@d
    return-object v0
.end method


# virtual methods
.method public getActionAcknowledgmentTimeout()J
    .locals 2

    #@0
    .prologue
    .line 201
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    #@2
    return-wide v0
.end method

.method public getKeyInjectionDelay()J
    .locals 2

    #@0
    .prologue
    .line 225
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    #@2
    return-wide v0
.end method

.method public getScrollAcknowledgmentTimeout()J
    .locals 2

    #@0
    .prologue
    .line 167
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    #@2
    return-wide v0
.end method

.method public getWaitForIdleTimeout()J
    .locals 2

    #@0
    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    #@2
    return-wide v0
.end method

.method public getWaitForSelectorTimeout()J
    .locals 2

    #@0
    .prologue
    .line 133
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    #@2
    return-wide v0
.end method

.method public setActionAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 184
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    #@2
    .line 185
    return-object p0
.end method

.method public setKeyInjectionDelay(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 213
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    #@2
    .line 214
    return-object p0
.end method

.method public setScrollAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 150
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    #@2
    .line 151
    return-object p0
.end method

.method public setWaitForIdleTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 80
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    #@2
    .line 81
    return-object p0
.end method

.method public setWaitForSelectorTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 116
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    #@2
    .line 117
    return-object p0
.end method
