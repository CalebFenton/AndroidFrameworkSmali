.class public Landroid/content/pm/PackageParser$PackageLite;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageLite"
.end annotation


# instance fields
.field public final baseCodePath:Ljava/lang/String;

.field public final baseRevisionCode:I

.field public final codePath:Ljava/lang/String;

.field public final coreApp:Z

.field public final extractNativeLibs:Z

.field public final installLocation:I

.field public final multiArch:Z

.field public final packageName:Ljava/lang/String;

.field public final splitCodePaths:[Ljava/lang/String;

.field public final splitNames:[Ljava/lang/String;

.field public final splitRevisionCodes:[I

.field public final verifiers:[Landroid/content/pm/VerifierInfo;

.field public final versionCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/PackageParser$ApkLite;[Ljava/lang/String;[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "baseApk"    # Landroid/content/pm/PackageParser$ApkLite;
    .param p3, "splitNames"    # [Ljava/lang/String;
    .param p4, "splitCodePaths"    # [Ljava/lang/String;
    .param p5, "splitRevisionCodes"    # [I

    #@0
    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 281
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->packageName:Ljava/lang/String;

    #@5
    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    #@7
    .line 282
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->versionCode:I

    #@9
    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->versionCode:I

    #@b
    .line 283
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->installLocation:I

    #@d
    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->installLocation:I

    #@f
    .line 284
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@11
    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    #@13
    .line 285
    iput-object p3, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    #@15
    .line 286
    iput-object p1, p0, Landroid/content/pm/PackageParser$PackageLite;->codePath:Ljava/lang/String;

    #@17
    .line 287
    iget-object v0, p2, Landroid/content/pm/PackageParser$ApkLite;->codePath:Ljava/lang/String;

    #@19
    iput-object v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@1b
    .line 288
    iput-object p4, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@1d
    .line 289
    iget v0, p2, Landroid/content/pm/PackageParser$ApkLite;->revisionCode:I

    #@1f
    iput v0, p0, Landroid/content/pm/PackageParser$PackageLite;->baseRevisionCode:I

    #@21
    .line 290
    iput-object p5, p0, Landroid/content/pm/PackageParser$PackageLite;->splitRevisionCodes:[I

    #@23
    .line 291
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->coreApp:Z

    #@25
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->coreApp:Z

    #@27
    .line 292
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->multiArch:Z

    #@29
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->multiArch:Z

    #@2b
    .line 293
    iget-boolean v0, p2, Landroid/content/pm/PackageParser$ApkLite;->extractNativeLibs:Z

    #@2d
    iput-boolean v0, p0, Landroid/content/pm/PackageParser$PackageLite;->extractNativeLibs:Z

    #@2f
    .line 280
    return-void
.end method


# virtual methods
.method public getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 297
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 298
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@a
    .line 299
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@c
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_0

    #@12
    .line 300
    iget-object v1, p0, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    #@14
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    #@17
    .line 302
    :cond_0
    return-object v0
.end method
