.class public Landroid/content/pm/PackageParser$ParseComponentArgs;
.super Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParseComponentArgs"
.end annotation


# instance fields
.field final greylist-max-o descriptionRes:I

.field final greylist-max-o enabledRes:I

.field greylist-max-o flags:I

.field final greylist-max-o processRes:I

.field final greylist-max-o sepProcesses:[Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII[Ljava/lang/String;III)V
    .registers 14
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_roundIconRes"    # I
    .param p7, "_logoRes"    # I
    .param p8, "_bannerRes"    # I
    .param p9, "_sepProcesses"    # [Ljava/lang/String;
    .param p10, "_processRes"    # I
    .param p11, "_descriptionRes"    # I
    .param p12, "_enabledRes"    # I

    .line 364
    invoke-direct/range {p0 .. p8}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V

    .line 366
    move v0, p8

    move p8, p7

    move p7, p6

    move p6, p5

    move p5, p4

    move p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "_owner":Landroid/content/pm/PackageParser$Package;
    .local v0, "_bannerRes":I
    .local p2, "_owner":Landroid/content/pm/PackageParser$Package;
    .local p3, "_outError":[Ljava/lang/String;
    .local p4, "_nameRes":I
    .local p5, "_labelRes":I
    .local p6, "_iconRes":I
    .local p7, "_roundIconRes":I
    .local p8, "_logoRes":I
    iput-object p9, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sepProcesses:[Ljava/lang/String;

    .line 367
    iput p10, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->processRes:I

    .line 368
    iput p11, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->descriptionRes:I

    .line 369
    iput p12, p1, Landroid/content/pm/PackageParser$ParseComponentArgs;->enabledRes:I

    .line 370
    return-void
.end method
