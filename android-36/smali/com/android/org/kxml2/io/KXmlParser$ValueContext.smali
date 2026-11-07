.class final enum Lcom/android/org/kxml2/io/KXmlParser$ValueContext;
.super Ljava/lang/Enum;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ValueContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/org/kxml2/io/KXmlParser$ValueContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

.field public static final enum blacklist ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

.field public static final enum blacklist ENTITY_DECLARATION:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

.field public static final enum blacklist TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/org/kxml2/io/KXmlParser$ValueContext;
    .registers 3

    .line 1295
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    sget-object v1, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    sget-object v2, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    filled-new-array {v0, v1, v2}, [Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1296
    new-instance v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    const-string v1, "ATTRIBUTE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ATTRIBUTE:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    .line 1297
    new-instance v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    const-string v1, "TEXT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->TEXT:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    .line 1298
    new-instance v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    const-string v1, "ENTITY_DECLARATION"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->ENTITY_DECLARATION:Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    .line 1295
    invoke-static {}, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->$values()[Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    move-result-object v0

    sput-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->$VALUES:[Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1295
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/org/kxml2/io/KXmlParser$ValueContext;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 1295
    const-class v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/org/kxml2/io/KXmlParser$ValueContext;
    .registers 1

    .line 1295
    sget-object v0, Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->$VALUES:[Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    invoke-virtual {v0}, [Lcom/android/org/kxml2/io/KXmlParser$ValueContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/org/kxml2/io/KXmlParser$ValueContext;

    return-object v0
.end method
