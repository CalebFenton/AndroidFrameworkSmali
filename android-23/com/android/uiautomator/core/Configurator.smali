.class public final Lcom/android/uiautomator/core/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


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
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 30
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    #@7
    .line 31
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    #@9
    .line 32
    const-wide/16 v0, 0xbb8

    #@b
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    #@d
    .line 36
    const-wide/16 v0, 0xc8

    #@f
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    #@11
    .line 39
    const-wide/16 v0, 0x0

    #@13
    iput-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    #@15
    .line 44
    return-void
.end method

.method public static getInstance()Lcom/android/uiautomator/core/Configurator;
    .locals 1

    #@0
    .prologue
    .line 55
    sget-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 56
    new-instance v0, Lcom/android/uiautomator/core/Configurator;

    #@6
    invoke-direct {v0}, Lcom/android/uiautomator/core/Configurator;-><init>()V

    #@9
    sput-object v0, Lcom/android/uiautomator/core/Configurator;->sConfigurator:Lcom/android/uiautomator/core/Configurator;

    #@b
    .line 58
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
    .line 198
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    #@2
    return-wide v0
.end method

.method public getKeyInjectionDelay()J
    .locals 2

    #@0
    .prologue
    .line 222
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    #@2
    return-wide v0
.end method

.method public getScrollAcknowledgmentTimeout()J
    .locals 2

    #@0
    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    #@2
    return-wide v0
.end method

.method public getWaitForIdleTimeout()J
    .locals 2

    #@0
    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    #@2
    return-wide v0
.end method

.method public getWaitForSelectorTimeout()J
    .locals 2

    #@0
    .prologue
    .line 130
    iget-wide v0, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    #@2
    return-wide v0
.end method

.method public setActionAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 181
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForActionAcknowledgment:J

    #@2
    .line 182
    return-object p0
.end method

.method public setKeyInjectionDelay(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "delay"    # J

    #@0
    .prologue
    .line 210
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mKeyInjectionDelay:J

    #@2
    .line 211
    return-object p0
.end method

.method public setScrollAcknowledgmentTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 147
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mScrollEventWaitTimeout:J

    #@2
    .line 148
    return-object p0
.end method

.method public setWaitForIdleTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 77
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForIdleTimeout:J

    #@2
    .line 78
    return-object p0
.end method

.method public setWaitForSelectorTimeout(J)Lcom/android/uiautomator/core/Configurator;
    .locals 1
    .param p1, "timeout"    # J

    #@0
    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/uiautomator/core/Configurator;->mWaitForSelector:J

    #@2
    .line 114
    return-object p0
.end method
