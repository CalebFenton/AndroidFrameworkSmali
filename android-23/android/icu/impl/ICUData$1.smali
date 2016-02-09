.class final Landroid/icu/impl/ICUData$1;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUData;->exists(Ljava/lang/String;)Z
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
        "Ljava/net/URL;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Landroid/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

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
    .line 94
    invoke-virtual {p0}, Landroid/icu/impl/ICUData$1;->run()Ljava/net/URL;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/net/URL;
    .locals 2

    #@0
    .prologue
    .line 95
    const-class v0, Landroid/icu/impl/ICUData;

    #@2
    iget-object v1, p0, Landroid/icu/impl/ICUData$1;->val$resourceName:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
