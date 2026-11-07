.class Ljava/util/ResourceBundle$SingleFormatControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleFormatControl"
.end annotation


# static fields
.field private static final greylist-max-o CLASS_ONLY:Ljava/util/ResourceBundle$Control;

.field private static final greylist-max-o PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;


# instance fields
.field private final greylist-max-o formats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCLASS_ONLY()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROPERTIES_ONLY()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3562
    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->PROPERTIES_ONLY:Ljava/util/ResourceBundle$Control;

    .line 3565
    new-instance v0, Ljava/util/ResourceBundle$SingleFormatControl;

    sget-object v1, Ljava/util/ResourceBundle$SingleFormatControl;->FORMAT_CLASS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$SingleFormatControl;->CLASS_ONLY:Ljava/util/ResourceBundle$Control;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3570
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    .line 3571
    iput-object p1, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    .line 3572
    return-void
.end method


# virtual methods
.method public whitelist test-api getFormats(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3575
    if-eqz p1, :cond_5

    .line 3578
    iget-object v0, p0, Ljava/util/ResourceBundle$SingleFormatControl;->formats:Ljava/util/List;

    return-object v0

    .line 3576
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
