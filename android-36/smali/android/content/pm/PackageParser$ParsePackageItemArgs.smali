.class Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsePackageItemArgs"
.end annotation


# instance fields
.field final greylist-max-o bannerRes:I

.field final greylist-max-o iconRes:I

.field final greylist-max-o labelRes:I

.field final greylist-max-o logoRes:I

.field final greylist-max-o nameRes:I

.field final greylist-max-o outError:[Ljava/lang/String;

.field final greylist-max-o owner:Landroid/content/pm/PackageParser$Package;

.field final greylist-max-o roundIconRes:I

.field greylist-max-o sa:Landroid/content/res/TypedArray;

.field greylist-max-o tag:Ljava/lang/String;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V
    .registers 9
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_roundIconRes"    # I
    .param p7, "_logoRes"    # I
    .param p8, "_bannerRes"    # I

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    .line 340
    iput-object p2, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    .line 341
    iput p3, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    .line 342
    iput p4, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    .line 343
    iput p5, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    .line 344
    iput p7, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    .line 345
    iput p8, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    .line 346
    iput p6, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->roundIconRes:I

    .line 347
    return-void
.end method
