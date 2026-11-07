.class Landroid/icu/impl/ICUData$3;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$loader:Ljava/lang/ClassLoader;

.field final synthetic blacklist val$resourceName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Landroid/icu/impl/ICUData$3;->val$loader:Ljava/lang/ClassLoader;

    iput-object p2, p0, Landroid/icu/impl/ICUData$3;->val$resourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/io/InputStream;
    .registers 3

    .line 139
    iget-object v0, p0, Landroid/icu/impl/ICUData$3;->val$loader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Landroid/icu/impl/ICUData$3;->val$resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 136
    invoke-virtual {p0}, Landroid/icu/impl/ICUData$3;->run()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
