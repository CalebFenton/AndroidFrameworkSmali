.class public abstract Lcom/android/internal/pm/parsing/PackageParser2$Callback;
.super Ljava/lang/Object;
.source "PackageParser2.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/pm/parsing/PackageParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
.end method

.method public final blacklist startParsingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;Z)Lcom/android/internal/pm/pkg/parsing/ParsingPackage;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "baseCodePath"    # Ljava/lang/String;
    .param p3, "codePath"    # Ljava/lang/String;
    .param p4, "manifestArray"    # Landroid/content/res/TypedArray;
    .param p5, "isCoreApp"    # Z

    .line 195
    move-object v5, p0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "baseCodePath":Ljava/lang/String;
    .end local p3    # "codePath":Ljava/lang/String;
    .end local p4    # "manifestArray":Landroid/content/res/TypedArray;
    .end local p5    # "isCoreApp":Z
    .local v0, "packageName":Ljava/lang/String;
    .local v1, "baseCodePath":Ljava/lang/String;
    .local v2, "codePath":Ljava/lang/String;
    .local v3, "manifestArray":Landroid/content/res/TypedArray;
    .local v4, "isCoreApp":Z
    invoke-static/range {v0 .. v5}, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->forParsing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;ZLcom/android/internal/pm/pkg/parsing/ParsingPackageUtils$Callback;)Lcom/android/internal/pm/parsing/pkg/PackageImpl;

    move-result-object p1

    return-object p1
.end method
