.class final Lsun/net/www/MimeTable$DefaultInstanceHolder$1;
.super Ljava/lang/Object;
.source "MimeTable.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/net/www/MimeTable$DefaultInstanceHolder;->getDefaultInstance()Lsun/net/www/MimeTable;
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
        "Lsun/net/www/MimeTable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Lsun/net/www/MimeTable$DefaultInstanceHolder$1;->run()Lsun/net/www/MimeTable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Lsun/net/www/MimeTable;
    .locals 1

    #@0
    .prologue
    .line 88
    new-instance v0, Lsun/net/www/MimeTable;

    #@2
    invoke-direct {v0}, Lsun/net/www/MimeTable;-><init>()V

    #@5
    .line 89
    .local v0, "instance":Lsun/net/www/MimeTable;
    invoke-static {v0}, Lsun/net/www/URLConnection;->setFileNameMap(Ljava/net/FileNameMap;)V

    #@8
    .line 90
    return-object v0
.end method
