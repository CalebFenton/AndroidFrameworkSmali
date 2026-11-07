.class Lcom/android/org/bouncycastle/util/Properties$2;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field final synthetic blacklist val$propertyName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/android/org/bouncycastle/util/Properties$2;->val$propertyName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()Ljava/lang/Object;
    .registers 1

    .line 217
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/Properties$2;->val$propertyName:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
