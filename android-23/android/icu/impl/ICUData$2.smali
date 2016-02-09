.class final Landroid/icu/impl/ICUData$2;
.super Ljava/lang/Object;
.source "ICUData.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ICUData;->getStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
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
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$resourceName:Ljava/lang/String;

.field final synthetic val$root:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "val$resourceName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 107
    .local p1, "val$root":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Landroid/icu/impl/ICUData$2;->val$root:Ljava/lang/Class;

    #@2
    iput-object p2, p0, Landroid/icu/impl/ICUData$2;->val$resourceName:Ljava/lang/String;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()Ljava/io/InputStream;
    .locals 2

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Landroid/icu/impl/ICUData$2;->val$root:Ljava/lang/Class;

    #@2
    iget-object v1, p0, Landroid/icu/impl/ICUData$2;->val$resourceName:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/icu/impl/ICUData$2;->run()Ljava/io/InputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
