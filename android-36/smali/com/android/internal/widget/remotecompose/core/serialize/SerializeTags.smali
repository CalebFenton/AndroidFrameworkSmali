.class public final enum Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;
.super Ljava/lang/Enum;
.source "SerializeTags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist A11Y:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist ACTION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist DRAW_OPERATION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist LAYOUT_COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

.field public static final enum blacklist MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;
    .registers 7

    .line 18
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->LAYOUT_COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v3, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->A11Y:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v4, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->ACTION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v5, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->DRAW_OPERATION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    filled-new-array/range {v0 .. v6}, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 19
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "COMPONENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 20
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "LAYOUT_COMPONENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->LAYOUT_COMPONENT:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 21
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "MODIFIER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 22
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "A11Y"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->A11Y:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 23
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "ACTION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->ACTION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 24
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "DRAW_OPERATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->DRAW_OPERATION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 25
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const-string v1, "EXPRESSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->EXPRESSION:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    .line 18
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->$values()[Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

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

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;
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

    .line 18
    const-class v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;
    .registers 1

    .line 18
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->$VALUES:[Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    invoke-virtual {v0}, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    return-object v0
.end method
