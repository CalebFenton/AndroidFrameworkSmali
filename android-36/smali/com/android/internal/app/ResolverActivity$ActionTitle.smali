.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final blacklist BROWSABLE_APP_TITLE_RES:I = 0x1040acb

.field public static final blacklist BROWSABLE_HOST_APP_TITLE_RES:I = 0x1040ac9

.field public static final blacklist BROWSABLE_HOST_TITLE_RES:I = 0x1040ac8

.field public static final blacklist BROWSABLE_TITLE_RES:I = 0x1040aca

.field public static final enum blacklist CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum blacklist VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final blacklist action:Ljava/lang/String;

.field public final blacklist labelRes:I

.field public final blacklist namedTitleRes:I

.field public final blacklist titleRes:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 8

    .line 282
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    filled-new-array/range {v0 .. v7}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 283
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v5, 0x1040ad4

    const v6, 0x1040ad3

    const-string v1, "VIEW"

    const/4 v2, 0x0

    const-string v3, "android.intent.action.VIEW"

    const v4, 0x1040ad2

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 287
    new-instance v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v6, 0x1040ac0

    const v7, 0x1040abf

    const-string v2, "EDIT"

    const/4 v3, 0x1

    const-string v4, "android.intent.action.EDIT"

    const v5, 0x1040abe

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 291
    new-instance v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v7, 0x1040ace

    const v8, 0x1040acd

    const-string v3, "SEND"

    const/4 v4, 0x2

    const-string v5, "android.intent.action.SEND"

    const v6, 0x1040acc

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v2, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 295
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v8, 0x1040ad1

    const v9, 0x1040ad0

    const-string v4, "SENDTO"

    const/4 v5, 0x3

    const-string v6, "android.intent.action.SENDTO"

    const v7, 0x1040acf

    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 299
    new-instance v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v9, 0x1040ace

    const v10, 0x1040acd

    const-string v5, "SEND_MULTIPLE"

    const/4 v6, 0x4

    const-string v7, "android.intent.action.SEND_MULTIPLE"

    const v8, 0x1040acc

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 303
    new-instance v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v10, 0x1040ac7

    const v11, 0x1040ac6

    const-string v6, "CAPTURE_IMAGE"

    const/4 v7, 0x5

    const-string v8, "android.media.action.IMAGE_CAPTURE"

    const v9, 0x1040ac5

    invoke-direct/range {v5 .. v11}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v5, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 307
    new-instance v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v11, 0x1040abd

    const v12, 0x1040abc

    const-string v7, "DEFAULT"

    const/4 v8, 0x6

    const/4 v9, 0x0

    const v10, 0x1040abb

    invoke-direct/range {v6 .. v12}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v6, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 311
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const v12, 0x1040ac4

    const v13, 0x1040ac3

    const-string v8, "HOME"

    const/4 v9, 0x7

    const-string v10, "android.intent.action.MAIN"

    const v11, 0x1040ac2

    invoke-direct/range {v7 .. v13}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 282
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 7
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .param p6, "labelRes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 331
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 332
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 333
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    .line 334
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    .line 335
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    .line 336
    return-void
.end method

.method public static blacklist forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 6
    .param p0, "action"    # Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 340
    .local v3, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_19

    if-eqz p0, :cond_19

    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 341
    return-object v3

    .line 339
    .end local v3    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 344
    :cond_1c
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
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

    .line 282
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .registers 1

    .line 282
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
