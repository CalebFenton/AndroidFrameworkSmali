.class Lcom/android/server/CertBlacklister$BlacklistObserver;
.super Landroid/database/ContentObserver;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CertBlacklister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistObserver"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mKey:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPath:Ljava/lang/String;

.field private final mTmpDir:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@4
    .line 59
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    #@6
    .line 60
    iput-object p2, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mName:Ljava/lang/String;

    #@8
    .line 61
    iput-object p3, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    #@a
    .line 62
    new-instance v0, Ljava/io/File;

    #@c
    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mPath:Ljava/lang/String;

    #@e
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@11
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mTmpDir:Ljava/io/File;

    #@17
    .line 63
    iput-object p4, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@19
    .line 57
    return-void
.end method

.method private writeBlacklist()V
    .locals 2

    #@0
    .prologue
    .line 77
    new-instance v0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;

    #@2
    const-string/jumbo v1, "BlacklistUpdater"

    #@5
    invoke-direct {v0, p0, v1}, Lcom/android/server/CertBlacklister$BlacklistObserver$1;-><init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V

    #@8
    invoke-virtual {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->start()V

    #@b
    .line 76
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    #@2
    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver;->mKey:Ljava/lang/String;

    #@4
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    #@3
    .line 69
    invoke-direct {p0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V

    #@6
    .line 67
    return-void
.end method
