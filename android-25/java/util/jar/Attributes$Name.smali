.class public Ljava/util/jar/Attributes$Name;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation


# static fields
.field public static final CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final NAME:Ljava/util/jar/Attributes$Name;

.field public static final SEALED:Ljava/util/jar/Attributes$Name;

.field public static final SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private hashCode:I

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 534
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2
    const-string/jumbo v1, "Manifest-Version"

    #@5
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@8
    sput-object v0, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    #@a
    .line 542
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@c
    const-string/jumbo v1, "Signature-Version"

    #@f
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@12
    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    #@14
    .line 548
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@16
    const-string/jumbo v1, "Content-Type"

    #@19
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@1c
    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    #@1e
    .line 557
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@20
    const-string/jumbo v1, "Class-Path"

    #@23
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@26
    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    #@28
    .line 566
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@2a
    const-string/jumbo v1, "Main-Class"

    #@2d
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@30
    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    #@32
    .line 574
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@34
    const-string/jumbo v1, "Sealed"

    #@37
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@3a
    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    #@3c
    .line 582
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@3e
    const-string/jumbo v1, "Extension-List"

    #@41
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@44
    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    #@46
    .line 590
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@48
    const-string/jumbo v1, "Extension-Name"

    #@4b
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@4e
    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    #@50
    .line 598
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@52
    const-string/jumbo v1, "Extension-Installation"

    #@55
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@58
    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    #@5a
    .line 606
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@5c
    const-string/jumbo v1, "Implementation-Title"

    #@5f
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@62
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@64
    .line 614
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@66
    const-string/jumbo v1, "Implementation-Version"

    #@69
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@6c
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@6e
    .line 622
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@70
    const-string/jumbo v1, "Implementation-Vendor"

    #@73
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@76
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@78
    .line 630
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@7a
    const-string/jumbo v1, "Implementation-Vendor-Id"

    #@7d
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@80
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    #@82
    .line 638
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@84
    const-string/jumbo v1, "Implementation-URL"

    #@87
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@8a
    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    #@8c
    .line 646
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@8e
    const-string/jumbo v1, "Specification-Title"

    #@91
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@94
    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    #@96
    .line 654
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@98
    const-string/jumbo v1, "Specification-Version"

    #@9b
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@9e
    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    #@a0
    .line 662
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@a2
    const-string/jumbo v1, "Specification-Vendor"

    #@a5
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@a8
    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    #@aa
    .line 667
    new-instance v0, Ljava/util/jar/Attributes$Name;

    #@ac
    const-string/jumbo v1, "Name"

    #@af
    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    #@b2
    sput-object v0, Ljava/util/jar/Attributes$Name;->NAME:Ljava/util/jar/Attributes$Name;

    #@b4
    .line 448
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 450
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    #@6
    .line 461
    if-nez p1, :cond_0

    #@8
    .line 462
    new-instance v0, Ljava/lang/NullPointerException;

    #@a
    const-string/jumbo v1, "name"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 464
    :cond_0
    invoke-static {p1}, Ljava/util/jar/Attributes$Name;->isValid(Ljava/lang/String;)Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_1

    #@17
    .line 465
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v0

    #@1d
    .line 467
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@23
    .line 460
    return-void
.end method

.method private static isAlpha(C)Z
    .locals 3
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 488
    const/16 v2, 0x61

    #@4
    if-lt p0, v2, :cond_1

    #@6
    const/16 v2, 0x7a

    #@8
    if-gt p0, v2, :cond_1

    #@a
    :cond_0
    :goto_0
    return v0

    #@b
    :cond_1
    const/16 v2, 0x41

    #@d
    if-lt p0, v2, :cond_2

    #@f
    const/16 v2, 0x5a

    #@11
    if-le p0, v2, :cond_0

    #@13
    :cond_2
    move v0, v1

    #@14
    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 492
    const/16 v1, 0x30

    #@3
    if-lt p0, v1, :cond_0

    #@5
    const/16 v1, 0x39

    #@7
    if-gt p0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private static isValid(C)Z
    .locals 2
    .param p0, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 484
    invoke-static {p0}, Ljava/util/jar/Attributes$Name;->isAlpha(C)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    invoke-static {p0}, Ljava/util/jar/Attributes$Name;->isDigit(C)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    const/16 v1, 0x5f

    #@f
    if-ne p0, v1, :cond_1

    #@11
    :cond_0
    :goto_0
    return v0

    #@12
    :cond_1
    const/16 v1, 0x2d

    #@14
    if-eq p0, v1, :cond_0

    #@16
    const/4 v0, 0x0

    #@17
    goto :goto_0
.end method

.method private static isValid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 471
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@4
    move-result v1

    #@5
    .line 472
    .local v1, "len":I
    const/16 v2, 0x46

    #@7
    if-gt v1, v2, :cond_0

    #@9
    if-nez v1, :cond_1

    #@b
    .line 473
    :cond_0
    return v3

    #@c
    .line 475
    :cond_1
    const/4 v0, 0x0

    #@d
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    #@f
    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    #@12
    move-result v2

    #@13
    invoke-static {v2}, Ljava/util/jar/Attributes$Name;->isValid(C)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_2

    #@19
    .line 477
    return v3

    #@1a
    .line 475
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 480
    :cond_3
    const/4 v2, 0x1

    #@1e
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 502
    instance-of v2, p1, Ljava/util/jar/Attributes$Name;

    #@3
    if-eqz v2, :cond_1

    #@5
    .line 503
    sget-object v0, Lsun/misc/ASCIICaseInsensitiveComparator;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@7
    .line 504
    .local v0, "c":Ljava/util/Comparator;
    iget-object v2, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@9
    check-cast p1, Ljava/util/jar/Attributes$Name;

    #@b
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v3, p1, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@d
    invoke-interface {v0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    #@10
    move-result v2

    #@11
    if-nez v2, :cond_0

    #@13
    const/4 v1, 0x1

    #@14
    :cond_0
    return v1

    #@15
    .line 506
    .end local v0    # "c":Ljava/util/Comparator;
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 514
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 515
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@7
    invoke-static {v0}, Lsun/misc/ASCIICaseInsensitiveComparator;->lowerCaseHashCode(Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    #@d
    .line 517
    :cond_0
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    #@f
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 524
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
