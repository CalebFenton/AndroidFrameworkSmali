.class public Landroid/content/pm/PackageParser$ApkLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApkLite"
.end annotation


# instance fields
.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final revisionCode:I

.field public final signatures:[Landroid/content/pm/Signature;

.field public final splitName:Ljava/lang/String;

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;[Landroid/content/pm/Signature;ZZZ)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "splitName"    # Ljava/lang/String;
    .param p4, "versionCode"    # I
    .param p5, "revisionCode"    # I
    .param p6, "installLocation"    # I
    .param p8, "signatures"    # [Landroid/content/pm/Signature;
    .param p9, "coreApp"    # Z
    .param p10, "multiArch"    # Z
    .param p11, "extractNativeLibs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/VerifierInfo;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "ZZZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 322
    .local p7, "verifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/VerifierInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 326
    iput-object p1, p0, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    #@5
    .line 327
    iput-object p2, p0, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@7
    .line 328
    iput-object p3, p0, Landroid/content/pm/PackageParser$ApkLite;->splitName:Ljava/lang/String;

    #@9
    .line 329
    iput p4, p0, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@b
    .line 330
    iput p5, p0, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    #@d
    .line 331
    iput p6, p0, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    #@f
    .line 332
    invoke-interface {p7}, Ljava/util/List;->size()I

    #@12
    move-result v0

    #@13
    new-array v0, v0, [Landroid/content/pm/VerifierInfo;

    #@15
    invoke-interface {p7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, [Landroid/content/pm/VerifierInfo;

    #@1b
    iput-object v0, p0, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@1d
    .line 333
    iput-object p8, p0, Landroid/content/pm/PackageParser$ApkLite;->signatures:[Landroid/content/pm/Signature;

    #@1f
    .line 334
    iput-boolean p9, p0, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    #@21
    .line 335
    iput-boolean p10, p0, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    #@23
    .line 336
    iput-boolean p11, p0, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    #@25
    .line 325
    return-void
.end method
