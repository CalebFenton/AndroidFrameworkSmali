.class Landroid/icu/impl/ICUData$1;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUData;->exists(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$resourceName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Landroid/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 98
    invoke-virtual {p0}, Landroid/icu/impl/ICUData$1;->run()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/net/URL;
    .registers 3

    .line 101
    const-class v0, Landroid/icu/impl/ICUData;

    iget-object v1, p0, Landroid/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
