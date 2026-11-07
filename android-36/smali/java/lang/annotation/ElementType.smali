.class public final enum Ljava/lang/annotation/ElementType;
.super Ljava/lang/Enum;
.source "ElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ljava/lang/annotation/ElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api CONSTRUCTOR:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api FIELD:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api METHOD:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api MODULE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api PACKAGE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api RECORD_COMPONENT:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api TYPE:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

.field public static final enum whitelist test-api TYPE_USE:Ljava/lang/annotation/ElementType;


# direct methods
.method private static synthetic blacklist $values()[Ljava/lang/annotation/ElementType;
    .registers 12

    .line 75
    sget-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    sget-object v1, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    sget-object v2, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    sget-object v3, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    sget-object v4, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    sget-object v5, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    sget-object v6, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    sget-object v7, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    sget-object v8, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    sget-object v9, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    sget-object v10, Ljava/lang/annotation/ElementType;->MODULE:Ljava/lang/annotation/ElementType;

    sget-object v11, Ljava/lang/annotation/ElementType;->RECORD_COMPONENT:Ljava/lang/annotation/ElementType;

    filled-new-array/range {v0 .. v11}, [Ljava/lang/annotation/ElementType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 78
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;

    .line 81
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "FIELD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;

    .line 84
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "METHOD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;

    .line 87
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "PARAMETER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;

    .line 90
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "CONSTRUCTOR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;

    .line 93
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;

    .line 96
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "ANNOTATION_TYPE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;

    .line 99
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "PACKAGE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;

    .line 106
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE_PARAMETER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;

    .line 113
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "TYPE_USE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;

    .line 120
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "MODULE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->MODULE:Ljava/lang/annotation/ElementType;

    .line 130
    new-instance v0, Ljava/lang/annotation/ElementType;

    const-string v1, "RECORD_COMPONENT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Ljava/lang/annotation/ElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljava/lang/annotation/ElementType;->RECORD_COMPONENT:Ljava/lang/annotation/ElementType;

    .line 75
    invoke-static {}, Ljava/lang/annotation/ElementType;->$values()[Ljava/lang/annotation/ElementType;

    move-result-object v0

    sput-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

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

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static whitelist test-api valueOf(Ljava/lang/String;)Ljava/lang/annotation/ElementType;
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

    .line 75
    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/ElementType;

    return-object v0
.end method

.method public static whitelist test-api values()[Ljava/lang/annotation/ElementType;
    .registers 1

    .line 75
    sget-object v0, Ljava/lang/annotation/ElementType;->$VALUES:[Ljava/lang/annotation/ElementType;

    invoke-virtual {v0}, [Ljava/lang/annotation/ElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/annotation/ElementType;

    return-object v0
.end method
