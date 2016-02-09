.class final enum Lorg/kxml2/io/KXmlParser$ValueContext;
.super Ljava/lang/Enum;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/kxml2/io/KXmlParser$ValueContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/kxml2/io/KXmlParser$ValueContext;

.field public static final enum ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

.field public static final enum ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

.field public static final enum TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 1295
    new-instance v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    #@5
    const-string/jumbo v1, "ATTRIBUTE"

    #@8
    invoke-direct {v0, v1, v2}, Lorg/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    #@b
    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@d
    .line 1296
    new-instance v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    #@f
    const-string/jumbo v1, "TEXT"

    #@12
    invoke-direct {v0, v1, v3}, Lorg/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    #@15
    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@17
    .line 1297
    new-instance v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    #@19
    const-string/jumbo v1, "ENTITY_DECLARATION"

    #@1c
    invoke-direct {v0, v1, v4}, Lorg/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    #@1f
    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@21
    .line 1294
    const/4 v0, 0x3

    #@22
    new-array v0, v0, [Lorg/kxml2/io/KXmlParser$ValueContext;

    #@24
    sget-object v1, Lorg/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@26
    aput-object v1, v0, v2

    #@28
    sget-object v1, Lorg/kxml2/io/KXmlParser$ValueContext;->TEXT:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@2a
    aput-object v1, v0, v3

    #@2c
    sget-object v1, Lorg/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lorg/kxml2/io/KXmlParser$ValueContext;

    #@2e
    aput-object v1, v0, v4

    #@30
    sput-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->$VALUES:[Lorg/kxml2/io/KXmlParser$ValueContext;

    #@32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    #@0
    .prologue
    .line 1294
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/kxml2/io/KXmlParser$ValueContext;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1294
    const-class v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lorg/kxml2/io/KXmlParser$ValueContext;

    #@8
    return-object v0
.end method

.method public static values()[Lorg/kxml2/io/KXmlParser$ValueContext;
    .locals 1

    #@0
    .prologue
    .line 1294
    sget-object v0, Lorg/kxml2/io/KXmlParser$ValueContext;->$VALUES:[Lorg/kxml2/io/KXmlParser$ValueContext;

    #@2
    return-object v0
.end method
