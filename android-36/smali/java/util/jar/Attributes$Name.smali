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
.field public static final whitelist test-api CLASS_PATH:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field private static blacklist KNOWN_NAMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/vm/annotation/Stable;
    .end annotation
.end field

.field public static final whitelist test-api MAIN_CLASS:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SEALED:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final whitelist test-api SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private final greylist-max-o hashCode:I

.field private final greylist-max-o name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 19

    .line 681
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    const-string v1, "Specification-Vendor"

    const-string v2, "Specification-Version"

    const-string v3, "Specification-Title"

    const-string v4, "Implementation-URL"

    const-string v5, "Implementation-Vendor-Id"

    const-string v6, "Implementation-Vendor"

    const-string v7, "Implementation-Version"

    const-string v8, "Implementation-Title"

    const-string v9, "Extension-Installation"

    const-string v10, "Extension-Name"

    const-string v11, "Extension-List"

    const-string v12, "Sealed"

    const-string v13, "Main-Class"

    const-string v14, "Class-Path"

    const-string v15, "Content-Type"

    move-object/from16 v16, v0

    const-string v0, "Signature-Version"

    move-object/from16 v17, v1

    const-string v1, "Manifest-Version"

    if-nez v16, :cond_15b

    .line 682
    move-object/from16 v16, v2

    new-instance v2, Ljava/util/jar/Attributes$Name;

    invoke-direct {v2, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v2, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 683
    new-instance v1, Ljava/util/jar/Attributes$Name;

    invoke-direct {v1, v0}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v1, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 684
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v15}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    .line 685
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v14}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 686
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v13}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    .line 687
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v12}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 688
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v11}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 689
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v10}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 690
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v9}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    .line 691
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v8}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 692
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v7}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 693
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v6}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 694
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v5}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 695
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v4}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    .line 696
    new-instance v0, Ljava/util/jar/Attributes$Name;

    invoke-direct {v0, v3}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 697
    new-instance v0, Ljava/util/jar/Attributes$Name;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 698
    new-instance v0, Ljava/util/jar/Attributes$Name;

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 702
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 703
    .local v0, "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes$Name;>;"
    sget-object v1, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 704
    sget-object v1, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 705
    sget-object v1, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 706
    sget-object v1, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 707
    sget-object v1, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 708
    sget-object v1, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 709
    sget-object v1, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 710
    sget-object v1, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 711
    sget-object v1, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 712
    sget-object v1, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 713
    sget-object v1, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 714
    sget-object v1, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 715
    sget-object v1, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 716
    sget-object v1, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 717
    sget-object v1, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 718
    sget-object v1, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 719
    sget-object v1, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 728
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "Add-Exports"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 729
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "Add-Opens"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 731
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "Launcher-Agent-Class"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 732
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "JavaFX-Application-Class"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 734
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "Name"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 735
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "Created-By"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 736
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "SHA1-Digest"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 737
    new-instance v1, Ljava/util/jar/Attributes$Name;

    const-string v2, "SHA-256-Digest"

    invoke-direct {v1, v2}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/jar/Attributes$Name;->addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V

    .line 738
    invoke-static {v0}, Ljava/util/Map;->copyOf(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    .line 739
    .end local v0    # "names":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/jar/Attributes$Name;>;"
    goto/16 :goto_20d

    .line 742
    :cond_15b
    move-object/from16 v18, v17

    move-object/from16 v16, v2

    sget-object v2, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/Attributes$Name;

    sput-object v1, Ljava/util/jar/Attributes$Name;->MANIFEST_VERSION:Ljava/util/jar/Attributes$Name;

    .line 743
    sget-object v1, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    .line 744
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->CONTENT_TYPE:Ljava/util/jar/Attributes$Name;

    .line 745
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->CLASS_PATH:Ljava/util/jar/Attributes$Name;

    .line 746
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->MAIN_CLASS:Ljava/util/jar/Attributes$Name;

    .line 747
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->SEALED:Ljava/util/jar/Attributes$Name;

    .line 748
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 749
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 750
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_INSTALLATION:Ljava/util/jar/Attributes$Name;

    .line 751
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 752
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 753
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 754
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 755
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    .line 756
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 757
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    move-object/from16 v2, v16

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 758
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    sput-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 762
    :goto_20d
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    invoke-direct {p0, p1}, Ljava/util/jar/Attributes$Name;->hash(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    .line 477
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    .line 478
    return-void
.end method

.method private static blacklist addName(Ljava/util/Map;Ljava/util/jar/Attributes$Name;)V
    .registers 3
    .param p1, "name"    # Ljava/util/jar/Attributes$Name;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes$Name;",
            ">;",
            "Ljava/util/jar/Attributes$Name;",
            ")V"
        }
    .end annotation

    .line 673
    .local p0, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/jar/Attributes$Name;>;"
    iget-object v0, p1, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    return-void
.end method

.method private final blacklist hash(Ljava/lang/String;)I
    .registers 8
    .param p1, "name"    # Ljava/lang/String;

    .line 482
    const-string v0, "name"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 484
    .local v0, "len":I
    const/16 v1, 0x46

    if-gt v0, v1, :cond_4d

    if-eqz v0, :cond_4d

    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, "h":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_4c

    .line 490
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 491
    .local v3, "c":C
    const/16 v4, 0x61

    if-lt v3, v4, :cond_26

    const/16 v4, 0x7a

    if-gt v3, v4, :cond_26

    .line 493
    mul-int/lit8 v4, v1, 0x1f

    add-int/lit8 v5, v3, -0x20

    add-int/2addr v4, v5

    move v1, v4

    .end local v1    # "h":I
    .local v4, "h":I
    goto :goto_49

    .line 494
    .end local v4    # "h":I
    .restart local v1    # "h":I
    :cond_26
    const/16 v4, 0x41

    if-lt v3, v4, :cond_2e

    const/16 v4, 0x5a

    if-le v3, v4, :cond_45

    :cond_2e
    const/16 v4, 0x30

    if-lt v3, v4, :cond_36

    const/16 v4, 0x39

    if-le v3, v4, :cond_45

    :cond_36
    const/16 v4, 0x5f

    if-eq v3, v4, :cond_45

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_3f

    goto :goto_45

    .line 499
    :cond_3f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    :cond_45
    :goto_45
    mul-int/lit8 v4, v1, 0x1f

    add-int/2addr v4, v3

    move v1, v4

    .line 489
    .end local v3    # "c":C
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 502
    .end local v2    # "i":I
    :cond_4c
    return v1

    .line 485
    .end local v1    # "h":I
    :cond_4d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static final blacklist of(Ljava/lang/String;)Ljava/util/jar/Attributes$Name;
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .line 460
    sget-object v0, Ljava/util/jar/Attributes$Name;->KNOWN_NAMES:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes$Name;

    .line 461
    .local v0, "n":Ljava/util/jar/Attributes$Name;
    if-eqz v0, :cond_b

    .line 462
    return-object v0

    .line 464
    :cond_b
    new-instance v1, Ljava/util/jar/Attributes$Name;

    invoke-direct {v1, p0}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 512
    if-ne p0, p1, :cond_4

    .line 513
    const/4 v0, 0x1

    return v0

    .line 520
    :cond_4
    instance-of v0, p1, Ljava/util/jar/Attributes$Name;

    if-eqz v0, :cond_14

    .line 521
    move-object v0, p1

    check-cast v0, Ljava/util/jar/Attributes$Name;

    iget-object v0, v0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    iget-object v1, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 523
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 530
    iget v0, p0, Ljava/util/jar/Attributes$Name;->hashCode:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 537
    iget-object v0, p0, Ljava/util/jar/Attributes$Name;->name:Ljava/lang/String;

    return-object v0
.end method
