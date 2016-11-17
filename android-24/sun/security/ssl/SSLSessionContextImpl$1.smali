.class Lsun/security/ssl/SSLSessionContextImpl$1;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/SSLSessionContextImpl;->getDefaultCacheLimit()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/ssl/SSLSessionContextImpl;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSessionContextImpl;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/ssl/SSLSessionContextImpl;

    #@0
    .prologue
    .line 203
    iput-object p1, p0, Lsun/security/ssl/SSLSessionContextImpl$1;->this$0:Lsun/security/ssl/SSLSessionContextImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 205
    invoke-virtual {p0}, Lsun/security/ssl/SSLSessionContextImpl$1;->run()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 207
    const-string/jumbo v0, "javax.net.ssl.sessionCacheSize"

    #@3
    .line 206
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method
