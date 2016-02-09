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
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const v10, 0x104034e

    #@6
    const v9, 0x104034d

    #@9
    .line 117
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@b
    const-string/jumbo v1, "VIEW"

    #@e
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@11
    .line 118
    const v4, 0x1040349

    #@14
    .line 119
    const v5, 0x104034a

    #@17
    .line 117
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@1a
    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@1c
    .line 120
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@1e
    const-string/jumbo v4, "EDIT"

    #@21
    const-string/jumbo v6, "android.intent.action.EDIT"

    #@24
    .line 121
    const v7, 0x104034b

    #@27
    .line 122
    const v8, 0x104034c

    #@2a
    move v5, v11

    #@2b
    .line 120
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@2e
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@30
    .line 123
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@32
    const-string/jumbo v4, "SEND"

    #@35
    const-string/jumbo v6, "android.intent.action.SEND"

    #@38
    move v5, v12

    #@39
    move v7, v9

    #@3a
    move v8, v10

    #@3b
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@3e
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@40
    .line 126
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@42
    const-string/jumbo v4, "SENDTO"

    #@45
    const-string/jumbo v6, "android.intent.action.SENDTO"

    #@48
    const/4 v5, 0x3

    #@49
    move v7, v9

    #@4a
    move v8, v10

    #@4b
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@4e
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@50
    .line 129
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@52
    const-string/jumbo v4, "SEND_MULTIPLE"

    #@55
    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    #@58
    const/4 v5, 0x4

    #@59
    move v7, v9

    #@5a
    move v8, v10

    #@5b
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@5e
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@60
    .line 132
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@62
    const-string/jumbo v4, "DEFAULT"

    #@65
    const/4 v5, 0x5

    #@66
    const/4 v6, 0x0

    #@67
    .line 133
    const v7, 0x1040347

    #@6a
    .line 134
    const v8, 0x1040348

    #@6d
    .line 132
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@70
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@72
    .line 135
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@74
    const-string/jumbo v4, "HOME"

    #@77
    const-string/jumbo v6, "android.intent.action.MAIN"

    #@7a
    const/4 v5, 0x6

    #@7b
    .line 136
    const v7, 0x104034f

    #@7e
    .line 137
    const v8, 0x1040350

    #@81
    .line 135
    invoke-direct/range {v3 .. v8}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    #@84
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@86
    .line 116
    const/4 v0, 0x7

    #@87
    new-array v0, v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@89
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@8b
    aput-object v1, v0, v2

    #@8d
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@8f
    aput-object v1, v0, v11

    #@91
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@93
    aput-object v1, v0, v12

    #@95
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@97
    const/4 v2, 0x3

    #@98
    aput-object v1, v0, v2

    #@9a
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@9c
    const/4 v2, 0x4

    #@9d
    aput-object v1, v0, v2

    #@9f
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@a1
    const/4 v2, 0x5

    #@a2
    aput-object v1, v0, v2

    #@a4
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@a6
    const/4 v2, 0x6

    #@a7
    aput-object v1, v0, v2

    #@a9
    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@ab
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I

    #@0
    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 144
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    #@5
    .line 145
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    #@7
    .line 146
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    #@9
    .line 143
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 151
    .local v0, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@c
    if-eq v0, v4, :cond_0

    #@e
    if-eqz p0, :cond_0

    #@10
    iget-object v4, v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    #@12
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 152
    return-object v0

    #@19
    .line 150
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 155
    .end local v0    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_1
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@1e
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 116
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1

    #@0
    .prologue
    .line 116
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@2
    return-object v0
.end method
