.class final Lsun/util/logging/PlatformLogger$1;
.super Ljava/lang/Object;
.source "PlatformLogger.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/util/logging/PlatformLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 166
    const-string/jumbo v3, "java.util.logging.config.class"

    #@4
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 167
    .local v0, "cname":Ljava/lang/String;
    const-string/jumbo v3, "java.util.logging.config.file"

    #@b
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    .line 168
    .local v1, "fname":Ljava/lang/String;
    if-nez v0, :cond_0

    #@11
    if-eqz v1, :cond_1

    #@13
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@16
    move-result-object v2

    #@17
    return-object v2

    #@18
    :cond_1
    const/4 v2, 0x0

    #@19
    goto :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 165
    invoke-virtual {p0}, Lsun/util/logging/PlatformLogger$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
