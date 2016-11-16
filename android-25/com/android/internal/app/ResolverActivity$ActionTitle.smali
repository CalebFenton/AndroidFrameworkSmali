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

.field public static final enum CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final labelRes:I

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x4

    #@1
    const/4 v12, 0x3

    #@2
    const/4 v11, 0x2

    #@3
    const/4 v10, 0x1

    #@4
    const/4 v2, 0x0

    #@5
    .line 142
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@7
    const-string/jumbo v1, "VIEW"

    #@a
    const-string/jumbo v3, "android.intent.action.VIEW"

    #@d
    .line 143
    const v4, 0x104037b

    #@10
    .line 144
    const v5, 0x104037c

    #@13
    .line 145
    const v6, 0x104037d

    #@16
    .line 142
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@19
    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@1b
    .line 146
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@1d
    const-string/jumbo v4, "EDIT"

    #@20
    const-string/jumbo v6, "android.intent.action.EDIT"

    #@23
    .line 147
    const v7, 0x104037e

    #@26
    .line 148
    const v8, 0x104037f

    #@29
    .line 149
    const v9, 0x1040380

    #@2c
    move v5, v10

    #@2d
    .line 146
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@30
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@32
    .line 150
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@34
    const-string/jumbo v4, "SEND"

    #@37
    const-string/jumbo v6, "android.intent.action.SEND"

    #@3a
    .line 151
    const v7, 0x1040381

    #@3d
    .line 152
    const v8, 0x1040382

    #@40
    .line 153
    const v9, 0x1040383

    #@43
    move v5, v11

    #@44
    .line 150
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@47
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@49
    .line 154
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@4b
    const-string/jumbo v4, "SENDTO"

    #@4e
    const-string/jumbo v6, "android.intent.action.SENDTO"

    #@51
    .line 155
    const v7, 0x1040384

    #@54
    .line 156
    const v8, 0x1040385

    #@57
    .line 157
    const v9, 0x1040386

    #@5a
    move v5, v12

    #@5b
    .line 154
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@5e
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@60
    .line 158
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@62
    const-string/jumbo v4, "SEND_MULTIPLE"

    #@65
    const-string/jumbo v6, "android.intent.action.SEND_MULTIPLE"

    #@68
    .line 159
    const v7, 0x1040381

    #@6b
    .line 160
    const v8, 0x1040382

    #@6e
    .line 161
    const v9, 0x1040383

    #@71
    move v5, v13

    #@72
    .line 158
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@75
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@77
    .line 162
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@79
    const-string/jumbo v4, "CAPTURE_IMAGE"

    #@7c
    const-string/jumbo v6, "android.media.action.IMAGE_CAPTURE"

    #@7f
    const/4 v5, 0x5

    #@80
    .line 163
    const v7, 0x104038a

    #@83
    .line 164
    const v8, 0x104038b

    #@86
    .line 165
    const v9, 0x104038c

    #@89
    .line 162
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@8c
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@8e
    .line 166
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@90
    const-string/jumbo v4, "DEFAULT"

    #@93
    const/4 v5, 0x6

    #@94
    const/4 v6, 0x0

    #@95
    .line 167
    const v7, 0x1040378

    #@98
    .line 168
    const v8, 0x1040379

    #@9b
    .line 169
    const v9, 0x104037a

    #@9e
    .line 166
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@a1
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@a3
    .line 170
    new-instance v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@a5
    const-string/jumbo v4, "HOME"

    #@a8
    const-string/jumbo v6, "android.intent.action.MAIN"

    #@ab
    const/4 v5, 0x7

    #@ac
    .line 171
    const v7, 0x1040387

    #@af
    .line 172
    const v8, 0x1040388

    #@b2
    .line 173
    const v9, 0x1040389

    #@b5
    .line 170
    invoke-direct/range {v3 .. v9}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    #@b8
    sput-object v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@ba
    .line 141
    const/16 v0, 0x8

    #@bc
    new-array v0, v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@be
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@c0
    aput-object v1, v0, v2

    #@c2
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@c4
    aput-object v1, v0, v10

    #@c6
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@c8
    aput-object v1, v0, v11

    #@ca
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@cc
    aput-object v1, v0, v12

    #@ce
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@d0
    aput-object v1, v0, v13

    #@d2
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@d4
    const/4 v2, 0x5

    #@d5
    aput-object v1, v0, v2

    #@d7
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@d9
    const/4 v2, 0x6

    #@da
    aput-object v1, v0, v2

    #@dc
    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@de
    const/4 v2, 0x7

    #@df
    aput-object v1, v0, v2

    #@e1
    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@e3
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .param p6, "labelRes"    # I

    #@0
    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 181
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    #@5
    .line 182
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    #@7
    .line 183
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    #@9
    .line 184
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    #@b
    .line 180
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    #@0
    .prologue
    .line 188
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
    .line 189
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
    .line 190
    return-object v0

    #@19
    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 193
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
    .line 141
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
    .line 141
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    #@2
    return-object v0
.end method
