.class Ljava/util/ResourceBundle$NoFallbackControl;
.super Ljava/util/ResourceBundle$Control;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoFallbackControl"
.end annotation


# static fields
.field static final NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

.field static final NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

.field static final NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 648
    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    #@2
    .line 649
    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->JAVAPROPERTIES:Ljava/lang/String;

    #@4
    .line 648
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/lang/String;)V

    #@7
    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    #@9
    .line 651
    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    #@b
    .line 652
    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->JAVACLASS:Ljava/lang/String;

    #@d
    .line 651
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/lang/String;)V

    #@10
    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    #@12
    .line 654
    new-instance v0, Ljava/util/ResourceBundle$NoFallbackControl;

    #@14
    .line 655
    sget-object v1, Ljava/util/ResourceBundle$NoFallbackControl;->listDefault:Ljava/util/List;

    #@16
    .line 654
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$NoFallbackControl;-><init>(Ljava/util/List;)V

    #@19
    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    #@1b
    .line 646
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 657
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    #@3
    .line 658
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    sput-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->listClass:Ljava/util/List;

    #@a
    .line 659
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->listClass:Ljava/util/List;

    #@c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f
    .line 660
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->listClass:Ljava/util/List;

    #@11
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    #@17
    .line 657
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 663
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/util/ResourceBundle$Control;-><init>()V

    #@3
    .line 664
    iput-object p1, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    #@5
    .line 663
    return-void
.end method


# virtual methods
.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 669
    if-nez p1, :cond_0

    #@3
    .line 670
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "baseName == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 671
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 672
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "locale == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 674
    :cond_1
    return-object v0
.end method
