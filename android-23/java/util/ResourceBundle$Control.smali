.class public Ljava/util/ResourceBundle$Control;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control"
.end annotation


# static fields
.field public static final FORMAT_CLASS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

.field public static final FORMAT_DEFAULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

.field public static final FORMAT_PROPERTIES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

.field static JAVACLASS:Ljava/lang/String; = null

.field static JAVAPROPERTIES:Ljava/lang/String; = null

.field public static final TTL_DONT_CACHE:J = -0x1L

.field public static final TTL_NO_EXPIRATION_CONTROL:J = -0x2L

.field static listClass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static listProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field format:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 694
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    sput-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    #@7
    .line 696
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@e
    .line 698
    new-instance v0, Ljava/util/ArrayList;

    #@10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@13
    sput-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    #@15
    .line 700
    const-string/jumbo v0, "java.class"

    #@18
    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@1a
    .line 702
    const-string/jumbo v0, "java.properties"

    #@1d
    sput-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@1f
    .line 705
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    #@21
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@26
    .line 706
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    #@28
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@2a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2d
    .line 707
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@2f
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@31
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@34
    .line 708
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    #@36
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@38
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3b
    .line 715
    sget-object v0, Ljava/util/ResourceBundle$Control;->listDefault:Ljava/util/List;

    #@3d
    .line 714
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@40
    move-result-object v0

    #@41
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@43
    .line 721
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@45
    .line 720
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@48
    move-result-object v0

    #@49
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS:Ljava/util/List;

    #@4b
    .line 727
    sget-object v0, Ljava/util/ResourceBundle$Control;->listProperties:Ljava/util/List;

    #@4d
    .line 726
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@50
    move-result-object v0

    #@51
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES:Ljava/util/List;

    #@53
    .line 739
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    #@55
    .line 740
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@57
    .line 739
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    #@5a
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    #@5c
    .line 742
    new-instance v0, Ljava/util/ResourceBundle$SimpleControl;

    #@5e
    .line 743
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@60
    .line 742
    invoke-direct {v0, v1}, Ljava/util/ResourceBundle$SimpleControl;-><init>(Ljava/lang/String;)V

    #@63
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    #@65
    .line 745
    new-instance v0, Ljava/util/ResourceBundle$Control;

    #@67
    invoke-direct {v0}, Ljava/util/ResourceBundle$Control;-><init>()V

    #@6a
    sput-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    #@6c
    .line 693
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 754
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    sput-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@a
    .line 755
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@c
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@e
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@11
    .line 756
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@13
    sget-object v1, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@18
    .line 757
    sget-object v0, Ljava/util/ResourceBundle$Control;->listClass:Ljava/util/List;

    #@1a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    #@20
    .line 753
    return-void
.end method

.method public static getControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    #@0
    .prologue
    .line 764
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 779
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 766
    :pswitch_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@f
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 767
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    #@17
    return-object v0

    #@18
    .line 769
    :cond_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@1a
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 770
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    #@22
    return-object v0

    #@23
    .line 774
    :pswitch_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@25
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 775
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    #@2d
    return-object v0

    #@2e
    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNoFallbackControl(Ljava/util/List;)Ljava/util/ResourceBundle$Control;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ResourceBundle$Control;"
        }
    .end annotation

    #@0
    .prologue
    .line 787
    .local p0, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@3
    move-result v0

    #@4
    packed-switch v0, :pswitch_data_0

    #@7
    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 789
    :pswitch_0
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@f
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 790
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_CLASS_CONTROL:Ljava/util/ResourceBundle$Control;

    #@17
    return-object v0

    #@18
    .line 792
    :cond_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@1a
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@1d
    move-result v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 793
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_PROPERTIES_CONTROL:Ljava/util/ResourceBundle$Control;

    #@22
    return-object v0

    #@23
    .line 797
    :pswitch_1
    sget-object v0, Ljava/util/ResourceBundle$Control;->FORMAT_DEFAULT:Ljava/util/List;

    #@25
    invoke-interface {p0, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_0

    #@2b
    .line 798
    sget-object v0, Ljava/util/ResourceBundle$NoFallbackControl;->NOFALLBACK_FORMAT_DEFAULT_CONTROL:Ljava/util/ResourceBundle$Control;

    #@2d
    return-object v0

    #@2e
    .line 787
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;
    .locals 6
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 810
    if-nez p1, :cond_0

    #@2
    .line 811
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "baseName == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 812
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 813
    new-instance v4, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v5, "locale == null"

    #@12
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v4

    #@16
    .line 815
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    #@18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 816
    .local v2, "retList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 817
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    .line 818
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 819
    .local v3, "variant":Ljava/lang/String;
    const-string/jumbo v4, ""

    #@2a
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v4

    #@2e
    if-nez v4, :cond_2

    #@30
    .line 820
    new-instance v4, Ljava/util/Locale;

    #@32
    invoke-direct {v4, v1, v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@35
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@38
    .line 822
    :cond_2
    const-string/jumbo v4, ""

    #@3b
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3e
    move-result v4

    #@3f
    if-nez v4, :cond_3

    #@41
    .line 823
    new-instance v4, Ljava/util/Locale;

    #@43
    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@46
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    .line 825
    :cond_3
    const-string/jumbo v4, ""

    #@4c
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4f
    move-result v4

    #@50
    if-nez v4, :cond_4

    #@52
    .line 826
    new-instance v4, Ljava/util/Locale;

    #@54
    invoke-direct {v4, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    #@57
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5a
    .line 828
    :cond_4
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@5c
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@5f
    .line 829
    return-object v2
.end method

.method public getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 846
    if-nez p1, :cond_0

    #@3
    .line 847
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "baseName == null"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 848
    :cond_0
    if-nez p2, :cond_1

    #@e
    .line 849
    new-instance v0, Ljava/lang/NullPointerException;

    #@10
    const-string/jumbo v1, "locale == null"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0

    #@17
    .line 851
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1a
    move-result-object v0

    #@1b
    if-eq v0, p2, :cond_2

    #@1d
    .line 852
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@20
    move-result-object v0

    #@21
    return-object v0

    #@22
    .line 854
    :cond_2
    return-object v1
.end method

.method public getFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 836
    if-nez p1, :cond_0

    #@2
    .line 837
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "baseName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 839
    :cond_0
    iget-object v0, p0, Ljava/util/ResourceBundle$Control;->format:Ljava/util/List;

    #@d
    return-object v0
.end method

.method public getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 950
    if-nez p1, :cond_0

    #@2
    .line 951
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "baseName == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 952
    :cond_0
    if-nez p2, :cond_1

    #@d
    .line 953
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "locale == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 955
    :cond_1
    const-wide/16 v0, -0x2

    #@18
    return-wide v0
.end method

.method public needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z
    .locals 10
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "bundle"    # Ljava/util/ResourceBundle;
    .param p6, "loadTime"    # J

    #@0
    .prologue
    .line 978
    if-nez p5, :cond_0

    #@2
    .line 980
    new-instance v7, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v8, "bundle == null"

    #@7
    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v7

    #@b
    .line 982
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    .line 983
    .local v0, "bundleName":Ljava/lang/String;
    move-object v4, p3

    #@10
    .line 984
    .local v4, "suffix":Ljava/lang/String;
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@12
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v7

    #@16
    if-eqz v7, :cond_1

    #@18
    .line 985
    const-string/jumbo v4, "class"

    #@1b
    .line 987
    :cond_1
    sget-object v7, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@1d
    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_2

    #@23
    .line 988
    const-string/jumbo v4, "properties"

    #@26
    .line 990
    :cond_2
    invoke-virtual {p0, v0, v4}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 991
    .local v6, "urlname":Ljava/lang/String;
    invoke-virtual {p4, v6}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    #@2d
    move-result-object v5

    #@2e
    .line 992
    .local v5, "url":Ljava/net/URL;
    if-eqz v5, :cond_3

    #@30
    .line 993
    invoke-virtual {v5}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 994
    .local v1, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    #@36
    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@39
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    #@3c
    move-result-wide v2

    #@3d
    .line 995
    .local v2, "lastModified":J
    cmp-long v7, v2, p6

    #@3f
    if-lez v7, :cond_3

    #@41
    .line 996
    const/4 v7, 0x1

    #@42
    return v7

    #@43
    .line 999
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "lastModified":J
    :cond_3
    const/4 v7, 0x0

    #@44
    return v7
.end method

.method public newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    .locals 16
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "loader"    # Ljava/lang/ClassLoader;
    .param p5, "reload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 882
    if-nez p3, :cond_0

    #@2
    .line 883
    new-instance v14, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v15, "format == null"

    #@7
    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v14

    #@b
    .line 884
    :cond_0
    if-nez p4, :cond_1

    #@d
    .line 885
    new-instance v14, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v15, "loader == null"

    #@12
    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v14

    #@16
    .line 887
    :cond_1
    invoke-virtual/range {p0 .. p2}, Ljava/util/ResourceBundle$Control;->toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 888
    .local v2, "bundleName":Ljava/lang/String;
    move-object/from16 v4, p4

    #@1c
    .line 890
    .local v4, "clsloader":Ljava/lang/ClassLoader;
    sget-object v14, Ljava/util/ResourceBundle$Control;->JAVACLASS:Ljava/lang/String;

    #@1e
    move-object/from16 v0, p3

    #@20
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v14

    #@24
    if-eqz v14, :cond_3

    #@26
    .line 891
    const/4 v3, 0x0

    #@27
    .line 893
    .local v3, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    #@2a
    move-result-object v3

    #@2b
    .line 897
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v3, :cond_2

    #@2d
    .line 898
    const/4 v14, 0x0

    #@2e
    return-object v14

    #@2f
    .line 895
    .restart local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v8

    #@30
    .local v8, "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_0

    #@31
    .line 894
    .end local v8    # "e":Ljava/lang/NoClassDefFoundError;
    :catch_1
    move-exception v7

    #@32
    .local v7, "e":Ljava/lang/Exception;
    goto :goto_0

    #@33
    .line 901
    .end local v3    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@36
    move-result-object v1

    #@37
    check-cast v1, Ljava/util/ResourceBundle;

    #@39
    .line 902
    .local v1, "bundle":Ljava/util/ResourceBundle;
    move-object/from16 v0, p2

    #@3b
    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->-wrap0(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    #@3e
    .line 903
    return-object v1

    #@3f
    .line 904
    .end local v1    # "bundle":Ljava/util/ResourceBundle;
    :catch_2
    move-exception v9

    #@40
    .line 905
    .local v9, "e":Ljava/lang/NullPointerException;
    const/4 v14, 0x0

    #@41
    return-object v14

    #@42
    .line 908
    .end local v9    # "e":Ljava/lang/NullPointerException;
    :cond_3
    sget-object v14, Ljava/util/ResourceBundle$Control;->JAVAPROPERTIES:Ljava/lang/String;

    #@44
    move-object/from16 v0, p3

    #@46
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v14

    #@4a
    if-eqz v14, :cond_7

    #@4c
    .line 909
    const/4 v12, 0x0

    #@4d
    .line 910
    .local v12, "streams":Ljava/io/InputStream;
    const-string/jumbo v14, "properties"

    #@50
    move-object/from16 v0, p0

    #@52
    invoke-virtual {v0, v2, v14}, Ljava/util/ResourceBundle$Control;->toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@55
    move-result-object v10

    #@56
    .line 911
    .local v10, "resourceName":Ljava/lang/String;
    if-eqz p5, :cond_5

    #@58
    .line 912
    const/4 v13, 0x0

    #@59
    .line 914
    .local v13, "url":Ljava/net/URL;
    :try_start_2
    move-object/from16 v0, p4

    #@5b
    invoke-virtual {v0, v10}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    #@5e
    move-result-object v13

    #@5f
    .line 918
    .end local v13    # "url":Ljava/net/URL;
    :goto_1
    if-eqz v13, :cond_4

    #@61
    .line 919
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@64
    move-result-object v5

    #@65
    .line 920
    .local v5, "con":Ljava/net/URLConnection;
    const/4 v14, 0x0

    #@66
    invoke-virtual {v5, v14}, Ljava/net/URLConnection;->setUseCaches(Z)V

    #@69
    .line 921
    invoke-virtual {v5}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@6c
    move-result-object v12

    #@6d
    .line 930
    .end local v5    # "con":Ljava/net/URLConnection;
    .end local v12    # "streams":Ljava/io/InputStream;
    :cond_4
    :goto_2
    if-eqz v12, :cond_6

    #@6f
    .line 932
    :try_start_3
    new-instance v11, Ljava/util/PropertyResourceBundle;

    #@71
    new-instance v14, Ljava/io/InputStreamReader;

    #@73
    invoke-direct {v14, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    #@76
    invoke-direct {v11, v14}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/Reader;)V

    #@79
    .line 933
    .local v11, "ret":Ljava/util/ResourceBundle;
    move-object/from16 v0, p2

    #@7b
    invoke-static {v11, v0}, Ljava/util/ResourceBundle;->-wrap0(Ljava/util/ResourceBundle;Ljava/util/Locale;)V

    #@7e
    .line 934
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    #@81
    .line 938
    return-object v11

    #@82
    .line 915
    .end local v11    # "ret":Ljava/util/ResourceBundle;
    .restart local v12    # "streams":Ljava/io/InputStream;
    .restart local v13    # "url":Ljava/net/URL;
    :catch_3
    move-exception v9

    #@83
    .restart local v9    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    #@84
    .line 925
    .end local v9    # "e":Ljava/lang/NullPointerException;
    .end local v13    # "url":Ljava/net/URL;
    :cond_5
    :try_start_4
    invoke-virtual {v4, v10}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    #@87
    move-result-object v12

    #@88
    .local v12, "streams":Ljava/io/InputStream;
    goto :goto_2

    #@89
    .line 926
    .local v12, "streams":Ljava/io/InputStream;
    :catch_4
    move-exception v9

    #@8a
    .restart local v9    # "e":Ljava/lang/NullPointerException;
    goto :goto_2

    #@8b
    .line 935
    .end local v9    # "e":Ljava/lang/NullPointerException;
    .end local v12    # "streams":Ljava/io/InputStream;
    :catch_5
    move-exception v6

    #@8c
    .line 936
    .local v6, "e":Ljava/io/IOException;
    const/4 v14, 0x0

    #@8d
    return-object v14

    #@8e
    .line 940
    .end local v6    # "e":Ljava/io/IOException;
    :cond_6
    const/4 v14, 0x0

    #@8f
    return-object v14

    #@90
    .line 942
    .end local v10    # "resourceName":Ljava/lang/String;
    :cond_7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    #@92
    invoke-direct {v14}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@95
    throw v14
.end method

.method public toBundleName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1014
    const-string/jumbo v0, ""

    #@3
    .line 1015
    .local v0, "emptyString":Ljava/lang/String;
    const-string/jumbo v1, "_"

    #@6
    .line 1016
    .local v1, "preString":Ljava/lang/String;
    const-string/jumbo v4, "_"

    #@9
    .line 1017
    .local v4, "underline":Ljava/lang/String;
    if-nez p1, :cond_0

    #@b
    .line 1018
    new-instance v5, Ljava/lang/NullPointerException;

    #@d
    const-string/jumbo v6, "baseName == null"

    #@10
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@13
    throw v5

    #@14
    .line 1020
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    .line 1021
    .local v3, "ret":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    .line 1022
    .local v2, "prefix":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1023
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@24
    move-result-object v5

    #@25
    const-string/jumbo v6, ""

    #@28
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v5

    #@2c
    if-nez v5, :cond_2

    #@2e
    .line 1024
    const-string/jumbo v5, "_"

    #@31
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 1025
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    .line 1029
    :goto_0
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    const-string/jumbo v6, ""

    #@42
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@45
    move-result v5

    #@46
    if-nez v5, :cond_3

    #@48
    .line 1030
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@4b
    .line 1031
    const-string/jumbo v5, "_"

    #@4e
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    .line 1032
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    #@5a
    .end local v2    # "prefix":Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5d
    .line 1037
    .restart local v2    # "prefix":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    const-string/jumbo v6, ""

    #@64
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@67
    move-result v5

    #@68
    if-nez v5, :cond_1

    #@6a
    .line 1038
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@6d
    .line 1039
    const-string/jumbo v5, "_"

    #@70
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    .line 1040
    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    #@76
    move-result-object v5

    #@77
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 1042
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    return-object v5

    #@7f
    .line 1027
    :cond_2
    const-string/jumbo v5, "_"

    #@82
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    goto :goto_0

    #@86
    .line 1035
    :cond_3
    const-string/jumbo v5, "_"

    #@89
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    goto :goto_1
.end method

.method public final toResourceName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "bundleName"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v2, 0x2e

    #@2
    .line 1057
    if-nez p2, :cond_0

    #@4
    .line 1058
    new-instance v1, Ljava/lang/NullPointerException;

    #@6
    const-string/jumbo v2, "suffix == null"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 1060
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    const/16 v1, 0x2f

    #@11
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@18
    .line 1061
    .local v0, "ret":Ljava/lang/StringBuilder;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1b
    .line 1062
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 1063
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    return-object v1
.end method
