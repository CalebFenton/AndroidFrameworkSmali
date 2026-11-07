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
        Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$BooleanParameter;
    }
.end annotation


# static fields
.field private static final blacklist PARAMETERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist cdataSections:Z

.field private blacklist comments:Z

.field private blacklist datatypeNormalization:Z

.field private blacklist entities:Z

.field private blacklist errorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field private blacklist namespaces:Z

.field private blacklist schemaLocation:Ljava/lang/String;

.field private blacklist schemaType:Ljava/lang/String;

.field private blacklist splitCdataSections:Z

.field private blacklist validate:Z

.field private blacklist wellFormed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetcdataSections(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcomments(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetentities(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgeterrorHandler(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Lorg/w3c/dom/DOMErrorHandler;
    .registers 1

    iget-object p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnamespaces(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetschemaLocation(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaLocation:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetschemaType(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsplitCdataSections(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalidate(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetwellFormed(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Z
    .registers 1

    iget-boolean p0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputcdataSections(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputcomments(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputdatatypeNormalization(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputentities(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputerrorHandler(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Lorg/w3c/dom/DOMErrorHandler;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputnamespaces(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputschemaLocation(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaLocation:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputschemaType(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->schemaType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsplitCdataSections(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputvalidate(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputwellFormed(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPARAMETERS()Ljava/util/Map;
    .registers 1

    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    .line 54
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    const-string v3, "canonical-form"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$1;-><init>()V

    const-string v3, "cdata-sections"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    const-string v3, "check-character-normalization"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$2;-><init>()V

    const-string v3, "comments"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$3;-><init>()V

    const-string v3, "datatype-normalization"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    const-string v4, "element-content-whitespace"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$4;-><init>()V

    const-string v4, "entities"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$5;-><init>()V

    const-string v4, "error-handler"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$6;-><init>()V

    const-string v4, "infoset"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$7;-><init>()V

    const-string v4, "namespaces"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-direct {v1, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    const-string v3, "namespace-declarations"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    const-string v3, "normalize-characters"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$8;-><init>()V

    const-string v3, "schema-location"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$9;-><init>()V

    const-string v3, "schema-type"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$10;-><init>()V

    const-string v3, "split-cdata-sections"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$11;-><init>()V

    const-string v3, "validate"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;

    invoke-direct {v1, v2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$FixedParameter;-><init>(Ljava/lang/Object;)V

    const-string v2, "validate-if-schema"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;

    invoke-direct {v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$12;-><init>()V

    const-string v2, "well-formed"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    .line 288
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    .line 289
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->datatypeNormalization:Z

    .line 290
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->entities:Z

    .line 292
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->namespaces:Z

    .line 295
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    .line 296
    iput-boolean v1, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->validate:Z

    .line 297
    iput-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    return-void
.end method

.method private blacklist checkTextValidity(Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/CharSequence;

    .line 464
    iget-boolean v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->wellFormed:Z

    if-eqz v0, :cond_10

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->isValid(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 465
    const/4 v0, 0x2

    const-string v1, "wf-invalid-character"

    invoke-direct {p0, v0, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    .line 467
    :cond_10
    return-void
.end method

.method private static blacklist internalGetParameterNames()Lorg/w3c/dom/DOMStringList;
    .registers 2

    .line 364
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 365
    .local v0, "result":[Ljava/lang/String;
    new-instance v1, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;

    invoke-direct {v1, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$13;-><init>([Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist isValid(Ljava/lang/CharSequence;)Z
    .registers 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 474
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_34

    .line 475
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 477
    .local v1, "c":C
    const/16 v3, 0x9

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2e

    const/16 v3, 0xa

    if-eq v1, v3, :cond_2e

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2e

    const/16 v3, 0x20

    if-lt v1, v3, :cond_22

    const v3, 0xd7ff

    if-le v1, v3, :cond_2e

    :cond_22
    const v3, 0xe000

    if-lt v1, v3, :cond_2d

    const v3, 0xfffd

    if-gt v1, v3, :cond_2d

    goto :goto_2e

    :cond_2d
    move v2, v4

    .line 480
    .local v2, "valid":Z
    :cond_2e
    :goto_2e
    if-nez v2, :cond_31

    .line 481
    return v4

    .line 474
    .end local v1    # "c":C
    .end local v2    # "valid":Z
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    .end local v0    # "i":I
    :cond_34
    return v2
.end method

.method private blacklist report(SLjava/lang/String;)V
    .registers 5
    .param p1, "severity"    # S
    .param p2, "type"    # Ljava/lang/String;

    .line 488
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_e

    .line 490
    iget-object v0, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->errorHandler:Lorg/w3c/dom/DOMErrorHandler;

    new-instance v1, Lorg/apache/harmony/xml/dom/DOMErrorImpl;

    invoke-direct {v1, p1, p2}, Lorg/apache/harmony/xml/dom/DOMErrorImpl;-><init>(SLjava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    .line 492
    :cond_e
    return-void
.end method


# virtual methods
.method public whitelist test-api canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 331
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    .line 332
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-eqz v0, :cond_12

    invoke-interface {v0, p0, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->canSet(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public whitelist test-api getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 352
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    .line 353
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-eqz v0, :cond_f

    .line 356
    invoke-interface {v0, p0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->get(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 354
    :cond_f
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api getParameterNames()Lorg/w3c/dom/DOMStringList;
    .registers 2

    .line 360
    invoke-static {}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->internalGetParameterNames()Lorg/w3c/dom/DOMStringList;

    move-result-object v0

    return-object v0
.end method

.method public blacklist normalize(Lorg/w3c/dom/Node;)V
    .registers 6
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 387
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const-string v1, "wf-invalid-character"

    const/4 v2, 0x2

    packed-switch v0, :pswitch_data_c2

    .line 458
    new-instance v0, Lorg/w3c/dom/DOMException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported node type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 459
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    .line 414
    :pswitch_29
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/CommentImpl;

    .line 415
    .local v0, "comment":Lorg/apache/harmony/xml/dom/CommentImpl;
    iget-boolean v3, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->comments:Z

    if-nez v3, :cond_39

    .line 416
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/CommentImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 417
    goto/16 :goto_c1

    .line 419
    :cond_39
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/CommentImpl;->containsDashDash()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 420
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    .line 422
    :cond_42
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/CommentImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    .line 423
    goto/16 :goto_c1

    .line 426
    .end local v0    # "comment":Lorg/apache/harmony/xml/dom/CommentImpl;
    :pswitch_49
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ProcessingInstructionImpl;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    .line 427
    goto/16 :goto_c1

    .line 455
    :pswitch_55
    goto/16 :goto_c1

    .line 389
    :pswitch_57
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;

    .line 390
    .local v0, "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    iget-boolean v3, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->cdataSections:Z

    if-eqz v3, :cond_7b

    .line 391
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->needsSplitting()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 392
    iget-boolean v3, p0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->splitCdataSections:Z

    if-eqz v3, :cond_72

    .line 393
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->split()V

    .line 394
    const-string v1, "cdata-sections-splitted"

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    goto :goto_75

    .line 396
    :cond_72
    invoke-direct {p0, v2, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->report(SLjava/lang/String;)V

    .line 399
    :cond_75
    :goto_75
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    .line 400
    goto :goto_c1

    .line 402
    :cond_7b
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/CDATASectionImpl;->replaceWithText()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object p1

    .line 406
    .end local v0    # "cdata":Lorg/apache/harmony/xml/dom/CDATASectionImpl;
    :pswitch_7f
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/TextImpl;

    .line 407
    .local v0, "text":Lorg/apache/harmony/xml/dom/TextImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/TextImpl;->minimize()Lorg/apache/harmony/xml/dom/TextImpl;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_c1

    .line 409
    iget-object v1, v0, Lorg/apache/harmony/xml/dom/TextImpl;->buffer:Ljava/lang/StringBuffer;

    invoke-direct {p0, v1}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    goto :goto_c1

    .line 430
    .end local v0    # "text":Lorg/apache/harmony/xml/dom/TextImpl;
    :pswitch_8e
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/AttrImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->checkTextValidity(Ljava/lang/CharSequence;)V

    .line 431
    goto :goto_c1

    .line 434
    :pswitch_99
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/xml/dom/ElementImpl;

    .line 435
    .local v0, "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    invoke-virtual {v0}, Lorg/apache/harmony/xml/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 436
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a1
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_b1

    .line 437
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    .line 436
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    .line 444
    .end local v0    # "element":Lorg/apache/harmony/xml/dom/ElementImpl;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "i":I
    :cond_b1
    :pswitch_b1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_b5
    if-eqz v0, :cond_c0

    .line 446
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 447
    .local v1, "next":Lorg/w3c/dom/Node;
    invoke-virtual {p0, v0}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->normalize(Lorg/w3c/dom/Node;)V

    .line 444
    move-object v0, v1

    goto :goto_b5

    .line 449
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "next":Lorg/w3c/dom/Node;
    :cond_c0
    nop

    .line 461
    :cond_c1
    :goto_c1
    return-void

    :pswitch_data_c2
    .packed-switch 0x1
        :pswitch_99
        :pswitch_8e
        :pswitch_7f
        :pswitch_57
        :pswitch_55
        :pswitch_55
        :pswitch_49
        :pswitch_29
        :pswitch_b1
        :pswitch_55
        :pswitch_b1
        :pswitch_55
    .end packed-switch
.end method

.method public whitelist test-api setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 336
    sget-object v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;->PARAMETERS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;

    .line 337
    .local v0, "parameter":Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;
    if-eqz v0, :cond_53

    .line 341
    const/16 v1, 0x11

    :try_start_c
    invoke-interface {v0, p0, p2}, Lorg/apache/harmony/xml/dom/DOMConfigurationImpl$Parameter;->set(Lorg/apache/harmony/xml/dom/DOMConfigurationImpl;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_f} :catch_39
    .catch Ljava/lang/ClassCastException; {:try_start_c .. :try_end_f} :catch_11

    .line 348
    nop

    .line 349
    return-void

    .line 345
    :catch_11
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/ClassCastException;
    new-instance v3, Lorg/w3c/dom/DOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 347
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 342
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :catch_39
    move-exception v2

    .line 343
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Lorg/w3c/dom/DOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Null not allowed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    .line 338
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_53
    new-instance v1, Lorg/w3c/dom/DOMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such parameter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method
