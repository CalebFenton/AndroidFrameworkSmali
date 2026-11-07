.class public final enum Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
.super Ljava/lang/Enum;
.source "AccessibleComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist CAROUSEL:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist CHECKBOX:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist DROPDOWN_LIST:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist IMAGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist PICKER:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist RADIO_BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist SWITCH:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist TAB:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public static final enum blacklist UNKNOWN:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;


# instance fields
.field private final blacklist mDescription:Ljava/lang/String;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 10

    .line 114
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->CHECKBOX:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->SWITCH:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->RADIO_BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->TAB:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->IMAGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->DROPDOWN_LIST:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v7, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->PICKER:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v8, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->CAROUSEL:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    sget-object v9, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->UNKNOWN:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    filled-new-array/range {v0 .. v9}, [Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 115
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x0

    const-string v2, "Button"

    const-string v3, "BUTTON"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 116
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x1

    const-string v2, "Checkbox"

    const-string v3, "CHECKBOX"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->CHECKBOX:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 117
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x2

    const-string v2, "Switch"

    const-string v3, "SWITCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->SWITCH:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 118
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x3

    const-string v2, "RadioButton"

    const-string v3, "RADIO_BUTTON"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->RADIO_BUTTON:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 119
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x4

    const-string v2, "Tab"

    const-string v3, "TAB"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->TAB:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 120
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x5

    const-string v2, "Image"

    const-string v3, "IMAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->IMAGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 121
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x6

    const-string v2, "DropdownList"

    const-string v3, "DROPDOWN_LIST"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->DROPDOWN_LIST:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 122
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/4 v1, 0x7

    const-string v2, "Picker"

    const-string v3, "PICKER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->PICKER:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 123
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/16 v1, 0x8

    const-string v2, "Carousel"

    const-string v3, "CAROUSEL"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->CAROUSEL:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 124
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->UNKNOWN:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 114
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->$values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 129
    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->mDescription:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public static blacklist fromInt(I)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 2
    .param p0, "i"    # I

    .line 144
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->UNKNOWN:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->ordinal()I

    move-result v0

    if-ge p0, v0, :cond_f

    .line 145
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0

    .line 147
    :cond_f
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->UNKNOWN:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
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

    .line 114
    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 1

    .line 114
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method


# virtual methods
.method public blacklist getDescription()Ljava/lang/String;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->mDescription:Ljava/lang/String;

    return-object v0
.end method
