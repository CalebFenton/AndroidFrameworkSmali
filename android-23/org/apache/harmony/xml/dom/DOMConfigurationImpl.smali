.class public final Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;
.super Ljava/lang/Object;
.source "DOMConfigurationImpl.java"

# interfaces
.implements Lorg/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;,
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;
    }
.end annotation


# static fields
.field private static final PARAMETERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cdataSections:Z

.field private comments:Z

.field private datatypeNormalization:Z

.field private entities:Z

.field private errorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private namespaces:Z

.field private schemaLocation:Ljava/lang/String;

.field private schemaType:Ljava/lang/String;

.field private splitCdataSections:Z

.field private validate:Z

.field private wellFormed:Z


# direct methods
.method static synthetic -get0()Ljava/util/Map;
    .locals 1

    #@0
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    #@2
    return v0
.end method

.method static synthetic -get10(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    #@2
    return v0
.end method

.method static synthetic -get11(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    #@2
    return v0
.end method

.method static synthetic -get3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    #@2
    return v0
.end method

.method static synthetic -get4(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    #@2
    return v0
.end method

.method static synthetic -get5(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Lorg/w3c/dom/DOMErrorHandler;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    #@2
    return v0
.end method

.method static synthetic -get7(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaLocation:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get8(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get9(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    #@2
    return p1
.end method

.method static synthetic -set10(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    #@2
    return p1
.end method

.method static synthetic -set2(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    #@2
    return p1
.end method

.method static synthetic -set3(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    #@2
    return p1
.end method

.method static synthetic -set4(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Lorg/w3c/dom/DOMErrorHandler;)Lorg/w3c/dom/DOMErrorHandler;
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2
    return-object p1
.end method

.method static synthetic -set5(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    #@2
    return p1
.end method

.method static synthetic -set6(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaLocation:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set7(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -set8(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    #@2
    return p1
.end method

.method static synthetic -set9(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    #@2
    return p1
.end method

.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 36
    new-instance v0, Ljava/util/TreeMap;

    #@4
    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    #@6
    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    #@9
    .line 35
    sput-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@b
    .line 54
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@d
    const-string/jumbo v1, "canonical-form"

    #@10
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    #@12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@15
    move-result-object v3

    #@16
    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    #@19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1c
    .line 60
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@1e
    const-string/jumbo v1, "cdata-sections"

    #@21
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;

    #@23
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;-><init>()V

    #@26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 72
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@2b
    const-string/jumbo v1, "check-character-normalization"

    #@2e
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    #@30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@33
    move-result-object v3

    #@34
    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    #@37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 77
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@3c
    const-string/jumbo v1, "comments"

    #@3f
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;

    #@41
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;-><init>()V

    #@44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 90
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@49
    const-string/jumbo v1, "datatype-normalization"

    #@4c
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;

    #@4e
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;-><init>()V

    #@51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@54
    .line 108
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@56
    const-string/jumbo v1, "element-content-whitespace"

    #@59
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    #@5b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@5e
    move-result-object v3

    #@5f
    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    #@62
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 113
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@67
    const-string/jumbo v1, "entities"

    #@6a
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;

    #@6c
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;-><init>()V

    #@6f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    .line 125
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@74
    const-string/jumbo v1, "error-handler"

    #@77
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;

    #@79
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;-><init>()V

    #@7c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7f
    .line 151
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@81
    const-string/jumbo v1, "infoset"

    #@84
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;

    #@86
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;-><init>()V

    #@89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@8c
    .line 181
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@8e
    const-string/jumbo v1, "namespaces"

    #@91
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;

    #@93
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;-><init>()V

    #@96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@99
    .line 197
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@9b
    const-string/jumbo v1, "namespace-declarations"

    #@9e
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    #@a0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@a3
    move-result-object v3

    #@a4
    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    #@a7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@aa
    .line 202
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@ac
    const-string/jumbo v1, "normalize-characters"

    #@af
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    #@b1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@b4
    move-result-object v3

    #@b5
    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    #@b8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bb
    .line 208
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@bd
    const-string/jumbo v1, "schema-location"

    #@c0
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;

    #@c2
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;-><init>()V

    #@c5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c8
    .line 224
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@ca
    const-string/jumbo v1, "schema-type"

    #@cd
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;

    #@cf
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;-><init>()V

    #@d2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    .line 240
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@d7
    const-string/jumbo v1, "split-cdata-sections"

    #@da
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;

    #@dc
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;-><init>()V

    #@df
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e2
    .line 255
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@e4
    const-string/jumbo v1, "validate"

    #@e7
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;

    #@e9
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;-><init>()V

    #@ec
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@ef
    .line 269
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@f1
    const-string/jumbo v1, "validate-if-schema"

    #@f4
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    #@f6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@f9
    move-result-object v3

    #@fa
    invoke-direct {v2, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    #@fd
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@100
    .line 275
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@102
    const-string/jumbo v1, "well-formed"

    #@105
    new-instance v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;

    #@107
    invoke-direct {v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;-><init>()V

    #@10a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10d
    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 287
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    #@7
    .line 288
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    #@9
    .line 289
    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    #@b
    .line 290
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    #@d
    .line 292
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    #@f
    .line 295
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    #@11
    .line 296
    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    #@13
    .line 297
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    #@15
    .line 33
    return-void
.end method

.method private checkTextValidity(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 460
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->isValid(Ljava/lang/CharSequence;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 459
    :cond_0
    :goto_0
    return-void

    #@b
    .line 461
    :cond_1
    const-string/jumbo v0, "wf-invalid-character"

    #@e
    const/4 v1, 0x2

    #@f
    invoke-direct {p0, v1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    #@12
    goto :goto_0
.end method

.method private isValid(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 470
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@4
    move-result v3

    #@5
    if-ge v1, v3, :cond_5

    #@7
    .line 471
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    #@a
    move-result v0

    #@b
    .line 473
    .local v0, "c":C
    const/16 v3, 0x9

    #@d
    if-eq v0, v3, :cond_0

    #@f
    const/16 v3, 0xa

    #@11
    if-ne v0, v3, :cond_1

    #@13
    :cond_0
    const/4 v2, 0x1

    #@14
    .line 476
    .local v2, "valid":Z
    :goto_1
    if-nez v2, :cond_4

    #@16
    .line 477
    const/4 v3, 0x0

    #@17
    return v3

    #@18
    .line 473
    .end local v2    # "valid":Z
    :cond_1
    const/16 v3, 0xd

    #@1a
    if-eq v0, v3, :cond_0

    #@1c
    .line 474
    const/16 v3, 0x20

    #@1e
    if-lt v0, v3, :cond_2

    #@20
    const v3, 0xd7ff

    #@23
    if-le v0, v3, :cond_0

    #@25
    .line 475
    :cond_2
    const v3, 0xe000

    #@28
    if-lt v0, v3, :cond_3

    #@2a
    const v3, 0xfffd

    #@2d
    if-gt v0, v3, :cond_3

    #@2f
    const/4 v2, 0x1

    #@30
    .restart local v2    # "valid":Z
    goto :goto_1

    #@31
    .end local v2    # "valid":Z
    :cond_3
    const/4 v2, 0x0

    #@32
    .restart local v2    # "valid":Z
    goto :goto_1

    #@33
    .line 470
    :cond_4
    add-int/lit8 v1, v1, 0x1

    #@35
    goto :goto_0

    #@36
    .line 480
    .end local v0    # "c":C
    .end local v2    # "valid":Z
    :cond_5
    const/4 v3, 0x1

    #@37
    return v3
.end method

.method private report(SLjava/lang/String;)V
    .locals 2
    .param p1, "severity"    # S
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 484
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 486
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    #@6
    new-instance v1, Lorg/apache/harmony/xml/dom/DOMErrorImpl;

    #@8
    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DOMErrorImpl;-><init>(SLjava/lang/String;)V

    #@b
    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    #@e
    .line 483
    :cond_0
    return-void
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 331
    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    #@8
    .line 332
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-eqz v0, :cond_0

    #@a
    invoke-interface {v0, p0, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    :goto_0
    return v1

    #@f
    :cond_0
    const/4 v1, 0x0

    #@10
    goto :goto_0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    .line 352
    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    #@8
    .line 353
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-nez v0, :cond_0

    #@a
    .line 354
    new-instance v1, Lorg/w3c/dom/DOMException;

    #@c
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "No such parameter: "

    #@14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    const/16 v3, 0x8

    #@22
    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@25
    throw v1

    #@26
    .line 356
    :cond_0
    invoke-interface {v0, p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    return-object v1
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 3

    #@0
    .prologue
    .line 360
    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@2
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@5
    move-result-object v1

    #@6
    sget-object v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@8
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@b
    move-result v2

    #@c
    new-array v2, v2, [Ljava/lang/String;

    #@e
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, [Ljava/lang/String;

    #@14
    .line 361
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;

    #@16
    invoke-direct {v1, p0, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;-><init>(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;[Ljava/lang/String;)V

    #@19
    return-object v1
.end method

.method public normalize(Lorg/w3c/dom/Node;)V
    .locals 11
    .param p1, "node"    # Lorg/w3c/dom/Node;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    .line 383
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@4
    move-result v8

    #@5
    packed-switch v8, :pswitch_data_0

    #@8
    .line 454
    new-instance v8, Lorg/w3c/dom/DOMException;

    #@a
    .line 455
    new-instance v9, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v10, "Unsupported node type "

    #@12
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v9

    #@16
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    #@19
    move-result v10

    #@1a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v9

    #@22
    .line 454
    const/16 v10, 0x9

    #@24
    invoke-direct {v8, v10, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@27
    throw v8

    #@28
    :pswitch_0
    move-object v1, p1

    #@29
    .line 385
    check-cast v1, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    #@2b
    .line 386
    .local v1, "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    iget-boolean v8, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    #@2d
    if-eqz v8, :cond_3

    #@2f
    .line 387
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->needsSplitting()Z

    #@32
    move-result v8

    #@33
    if-eqz v8, :cond_0

    #@35
    .line 388
    iget-boolean v8, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    #@37
    if-eqz v8, :cond_2

    #@39
    .line 389
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->split()V

    #@3c
    .line 390
    const-string/jumbo v8, "cdata-sections-splitted"

    #@3f
    const/4 v9, 0x1

    #@40
    invoke-direct {p0, v9, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    #@43
    .line 395
    :cond_0
    :goto_0
    iget-object v8, v1, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->buffer:Ljava/lang/StringBuffer;

    #@45
    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    #@48
    .line 374
    .end local v1    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    #@49
    .line 392
    .restart local v1    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :cond_2
    const-string/jumbo v8, "wf-invalid-character"

    #@4c
    invoke-direct {p0, v9, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    #@4f
    goto :goto_0

    #@50
    .line 398
    :cond_3
    invoke-virtual {v1}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->replaceWithText()Lorg/apache/harmony/xml/dom/TextImpl;

    #@53
    move-result-object p1

    #@54
    .end local v1    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :pswitch_2
    move-object v7, p1

    #@55
    .line 402
    check-cast v7, Lorg/apache/harmony/xml/dom/TextImpl;

    #@57
    .line 403
    .local v7, "text":Lorg/apache/harmony/xml/dom/TextImpl;
    invoke-virtual {v7}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    #@5a
    move-result-object v7

    #@5b
    .line 404
    if-eqz v7, :cond_1

    #@5d
    .line 405
    iget-object v8, v7, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    #@5f
    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    #@62
    goto :goto_1

    #@63
    .end local v7    # "text":Lorg/apache/harmony/xml/dom/TextImpl;
    :pswitch_3
    move-object v3, p1

    #@64
    .line 410
    check-cast v3, Lorg/apache/harmony/xml/dom/CommentImpl;

    #@66
    .line 411
    .local v3, "comment":Lorg/apache/harmony/xml/dom/CommentImpl;
    iget-boolean v8, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    #@68
    if-nez v8, :cond_4

    #@6a
    .line 412
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/CommentImpl;->getParentNode()Lorg/w3c/dom/Node;

    #@6d
    move-result-object v8

    #@6e
    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    #@71
    goto :goto_1

    #@72
    .line 415
    :cond_4
    invoke-virtual {v3}, Lorg/apache/harmony/xml/dom/CommentImpl;->containsDashDash()Z

    #@75
    move-result v8

    #@76
    if-eqz v8, :cond_5

    #@78
    .line 416
    const-string/jumbo v8, "wf-invalid-character"

    #@7b
    invoke-direct {p0, v9, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    #@7e
    .line 418
    :cond_5
    iget-object v8, v3, Lorg/apache/harmony/xml/dom/CommentImpl;->buffer:Ljava/lang/StringBuffer;

    #@80
    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    #@83
    goto :goto_1

    #@84
    .end local v3    # "comment":Lorg/apache/harmony/xml/dom/CommentImpl;
    :pswitch_4
    move-object v8, p1

    #@85
    .line 422
    check-cast v8, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    #@87
    invoke-virtual {v8}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->getData()Ljava/lang/String;

    #@8a
    move-result-object v8

    #@8b
    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    #@8e
    goto :goto_1

    #@8f
    :pswitch_5
    move-object v8, p1

    #@90
    .line 426
    check-cast v8, Lorg/apache/harmony/xml/dom/AttrImpl;

    #@92
    invoke-virtual {v8}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    #@95
    move-result-object v8

    #@96
    invoke-direct {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    #@99
    goto :goto_1

    #@9a
    :pswitch_6
    move-object v4, p1

    #@9b
    .line 430
    check-cast v4, Lorg/apache/harmony/xml/dom/ElementImpl;

    #@9d
    .line 431
    .local v4, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v4}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    #@a0
    move-result-object v0

    #@a1
    .line 432
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v5, 0x0

    #@a2
    .local v5, "i":I
    :goto_2
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    #@a5
    move-result v8

    #@a6
    if-ge v5, v8, :cond_6

    #@a8
    .line 433
    invoke-interface {v0, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    #@ab
    move-result-object v8

    #@ac
    invoke-virtual {p0, v8}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    #@af
    .line 432
    add-int/lit8 v5, v5, 0x1

    #@b1
    goto :goto_2

    #@b2
    .line 440
    .end local v0    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v4    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v5    # "i":I
    :cond_6
    :pswitch_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    #@b5
    move-result-object v2

    #@b6
    .local v2, "child":Lorg/w3c/dom/Node;
    :goto_3
    if-eqz v2, :cond_1

    #@b8
    .line 442
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    #@bb
    move-result-object v6

    #@bc
    .line 443
    .local v6, "next":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    #@bf
    .line 440
    move-object v2, v6

    #@c0
    goto :goto_3

    #@c1
    .line 383
    nop

    #@c2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_1
    .end packed-switch
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v6, 0x11

    #@2
    .line 336
    sget-object v3, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    #@4
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    #@a
    .line 337
    .local v2, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-nez v2, :cond_0

    #@c
    .line 338
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@e
    new-instance v4, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v5, "No such parameter: "

    #@16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v4

    #@1a
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v4

    #@22
    const/16 v5, 0x8

    #@24
    invoke-direct {v3, v5, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@27
    throw v3

    #@28
    .line 341
    :cond_0
    :try_start_0
    invoke-interface {v2, p0, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@2b
    .line 335
    return-void

    #@2c
    .line 345
    :catch_0
    move-exception v0

    #@2d
    .line 346
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@2f
    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    #@31
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@34
    const-string/jumbo v5, "Invalid type for "

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    const-string/jumbo v5, ": "

    #@42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v4

    #@46
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@49
    move-result-object v5

    #@4a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v4

    #@52
    .line 346
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@55
    throw v3

    #@56
    .line 342
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    #@57
    .line 343
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lorg/w3c/dom/DOMException;

    #@59
    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v5, "Null not allowed for "

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v4

    #@6d
    .line 343
    invoke-direct {v3, v6, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    #@70
    throw v3
.end method
