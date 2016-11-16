.class final Lcom/android/org/bouncycastle/util/Properties$1;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$propertyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Properties$1;->val$propertyName:Ljava/lang/String;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 21
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/Properties$1;->val$propertyName:Ljava/lang/String;

    #@3
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 22
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    #@9
    .line 24
    return-object v2

    #@a
    .line 27
    :cond_0
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method
