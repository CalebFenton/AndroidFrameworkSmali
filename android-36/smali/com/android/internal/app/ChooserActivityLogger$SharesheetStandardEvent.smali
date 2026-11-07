.class public final enum Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
.super Ljava/lang/Enum;
.source "ChooserActivityLogger.java"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivityLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SharesheetStandardEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

.field public static final enum blacklist SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;


# instance fields
.field private final blacklist mId:I


# direct methods
.method private static synthetic blacklist $values()[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
    .registers 10

    .line 171
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v1, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v2, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v3, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v4, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v5, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v6, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v7, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v8, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    sget-object v9, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    filled-new-array/range {v0 .. v9}, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 172
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const-string v1, "INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->INVALID:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 173
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x1

    const/16 v2, 0xe3

    const-string v3, "SHARESHEET_TRIGGERED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 175
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x2

    const/16 v2, 0xe5

    const-string v3, "SHARESHEET_PROFILE_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 177
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x3

    const/16 v2, 0xe6

    const-string v3, "SHARESHEET_EXPANDED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 179
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x4

    const/16 v2, 0xe7

    const-string v3, "SHARESHEET_COLLAPSED"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 181
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x5

    const/16 v2, 0x142

    const-string v3, "SHARESHEET_APP_LOAD_COMPLETE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 183
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x6

    const/16 v2, 0x143

    const-string v3, "SHARESHEET_DIRECT_LOAD_COMPLETE"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 185
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/4 v1, 0x7

    const/16 v2, 0x144

    const-string v3, "SHARESHEET_DIRECT_LOAD_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 187
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/16 v1, 0x8

    const/16 v2, 0x33f

    const-string v3, "SHARESHEET_APP_SHARE_RANKING_TIMEOUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 189
    new-instance v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    const/16 v1, 0x9

    const/16 v2, 0x33c

    const-string v3, "SHARESHEET_EMPTY_DIRECT_SHARE_ROW"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    .line 171
    invoke-static {}, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->$values()[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    move-result-object v0

    sput-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->$VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "id"    # I
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
            "(I)V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 194
    iput p3, p0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->mId:I

    .line 195
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
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

    .line 171
    const-class v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    return-object v0
.end method

.method public static blacklist values()[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;
    .registers 1

    .line 171
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->$VALUES:[Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-virtual {v0}, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    return-object v0
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 197
    iget v0, p0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->mId:I

    return v0
.end method
