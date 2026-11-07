.class final Ljava/util/ResourceBundle$NoFallbackControl;
.super Ljava/util/ResourceBundle$SingleFormatControl;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoFallbackControl"
.end annotation


# static fields
.field private static final greylist-max-o CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

.field private static final greylist-max-o NO_FALLBACK:Ljava/util/ResourceBundle$Control;

.field private static final greylist-max-o PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetCLASS_ONLY_NO_FALLBACK()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetNO_FALLBACK()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPROPERTIES_ONLY_NO_FALLBACK()Ljava/util/ResourceBundle$Control;
    .registers 1

    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 3583
    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->FORMAT_DEFAULT:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    .line 3586
    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->FORMAT_PROPERTIES:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->PROPERTIES_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

    .line 3589
    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->FORMAT_CLASS:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->CLASS_ONLY_NO_FALLBACK:Ljava/util/ResourceBundle$Control;

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

    .line 3593
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ResourceBundle$SingleFormatControl;-><init>(Ljava/util/List;)V

    .line 3594
    return-void
.end method


# virtual methods
.method public whitelist test-api getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .registers 4
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 3597
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 3600
    const/4 v0, 0x0

    return-object v0

    .line 3598
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
