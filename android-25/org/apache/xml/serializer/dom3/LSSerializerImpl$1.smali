.class final Lorg/apache/xml/serializer/dom3/LSSerializerImpl$1;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 78
    :try_start_0
    const-string/jumbo v1, "line.separator"

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    return-object v1

    #@8
    .line 80
    :catch_0
    move-exception v0

    #@9
    .line 81
    .local v0, "ex":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    #@a
    return-object v1
.end method
