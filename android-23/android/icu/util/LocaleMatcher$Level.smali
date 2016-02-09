.class final enum Landroid/icu/util/LocaleMatcher$Level;
.super Ljava/lang/Enum;
.source "LocaleMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/util/LocaleMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/icu/util/LocaleMatcher$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/icu/util/LocaleMatcher$Level;

.field public static final enum language:Landroid/icu/util/LocaleMatcher$Level;

.field public static final enum region:Landroid/icu/util/LocaleMatcher$Level;

.field public static final enum script:Landroid/icu/util/LocaleMatcher$Level;


# instance fields
.field final worst:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x2

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 411
    new-instance v0, Landroid/icu/util/LocaleMatcher$Level;

    #@5
    const-string/jumbo v1, "language"

    #@8
    const-wide v2, 0x3fefae147ae147aeL    # 0.99

    #@d
    invoke-direct {v0, v1, v4, v2, v3}, Landroid/icu/util/LocaleMatcher$Level;-><init>(Ljava/lang/String;ID)V

    #@10
    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@12
    .line 412
    new-instance v0, Landroid/icu/util/LocaleMatcher$Level;

    #@14
    const-string/jumbo v1, "script"

    #@17
    const-wide v2, 0x3fc999999999999aL    # 0.2

    #@1c
    invoke-direct {v0, v1, v5, v2, v3}, Landroid/icu/util/LocaleMatcher$Level;-><init>(Ljava/lang/String;ID)V

    #@1f
    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@21
    .line 413
    new-instance v0, Landroid/icu/util/LocaleMatcher$Level;

    #@23
    const-string/jumbo v1, "region"

    #@26
    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    #@2b
    invoke-direct {v0, v1, v6, v2, v3}, Landroid/icu/util/LocaleMatcher$Level;-><init>(Ljava/lang/String;ID)V

    #@2e
    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    #@30
    .line 410
    const/4 v0, 0x3

    #@31
    new-array v0, v0, [Landroid/icu/util/LocaleMatcher$Level;

    #@33
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->language:Landroid/icu/util/LocaleMatcher$Level;

    #@35
    aput-object v1, v0, v4

    #@37
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->script:Landroid/icu/util/LocaleMatcher$Level;

    #@39
    aput-object v1, v0, v5

    #@3b
    sget-object v1, Landroid/icu/util/LocaleMatcher$Level;->region:Landroid/icu/util/LocaleMatcher$Level;

    #@3d
    aput-object v1, v0, v6

    #@3f
    sput-object v0, Landroid/icu/util/LocaleMatcher$Level;->$VALUES:[Landroid/icu/util/LocaleMatcher$Level;

    #@41
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ID)V
    .locals 1
    .param p3, "d"    # D

    #@0
    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 418
    iput-wide p3, p0, Landroid/icu/util/LocaleMatcher$Level;->worst:D

    #@5
    .line 417
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/icu/util/LocaleMatcher$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 410
    const-class v0, Landroid/icu/util/LocaleMatcher$Level;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/util/LocaleMatcher$Level;

    #@8
    return-object v0
.end method

.method public static values()[Landroid/icu/util/LocaleMatcher$Level;
    .locals 1

    #@0
    .prologue
    .line 410
    sget-object v0, Landroid/icu/util/LocaleMatcher$Level;->$VALUES:[Landroid/icu/util/LocaleMatcher$Level;

    #@2
    return-object v0
.end method
