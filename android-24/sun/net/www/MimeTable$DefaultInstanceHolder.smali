.class Lsun/net/www/MimeTable$DefaultInstanceHolder;
.super Ljava/lang/Object;
.source "MimeTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/MimeTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultInstanceHolder"
.end annotation


# static fields
.field static final defaultInstance:Lsun/net/www/MimeTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    invoke-static {}, Lsun/net/www/MimeTable$DefaultInstanceHolder;->getDefaultInstance()Lsun/net/www/MimeTable;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lsun/net/www/MimeTable$DefaultInstanceHolder;->defaultInstance:Lsun/net/www/MimeTable;

    #@6
    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getDefaultInstance()Lsun/net/www/MimeTable;
    .locals 1

    #@0
    .prologue
    .line 86
    new-instance v0, Lsun/net/www/MimeTable$DefaultInstanceHolder$1;

    #@2
    invoke-direct {v0}, Lsun/net/www/MimeTable$DefaultInstanceHolder$1;-><init>()V

    #@5
    .line 85
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Lsun/net/www/MimeTable;

    #@b
    return-object v0
.end method
