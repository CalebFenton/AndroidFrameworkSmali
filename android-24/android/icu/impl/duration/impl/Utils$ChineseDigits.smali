.class public Landroid/icu/impl/duration/impl/Utils$ChineseDigits;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChineseDigits"
.end annotation


# static fields
.field public static final DEBUG:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;


# instance fields
.field final digits:[C

.field final ko:Z

.field final levels:[C

.field final liang:C

.field final units:[C


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 206
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@3
    const-string/jumbo v1, "0123456789s"

    #@6
    const-string/jumbo v2, "sbq"

    #@9
    const-string/jumbo v3, "WYZ"

    #@c
    const/16 v4, 0x4c

    #@e
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    #@11
    .line 205
    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->DEBUG:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@13
    .line 209
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@15
    const-string/jumbo v1, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    #@18
    .line 210
    const-string/jumbo v2, "\u5341\u767e\u5343"

    #@1b
    .line 211
    const-string/jumbo v3, "\u842c\u5104\u5146"

    #@1e
    .line 212
    const/16 v4, 0x5169

    #@20
    .line 209
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    #@23
    .line 208
    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@25
    .line 215
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@27
    const-string/jumbo v1, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    #@2a
    .line 216
    const-string/jumbo v2, "\u5341\u767e\u5343"

    #@2d
    .line 217
    const-string/jumbo v3, "\u4e07\u4ebf\u5146"

    #@30
    .line 218
    const/16 v4, 0x4e24

    #@32
    .line 215
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    #@35
    .line 214
    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@37
    .line 223
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@39
    const-string/jumbo v1, "\uc601\uc77c\uc774\uc0bc\uc0ac\uc624\uc721\uce60\ud314\uad6c\uc2ed"

    #@3c
    .line 224
    const-string/jumbo v2, "\uc2ed\ubc31\ucc9c"

    #@3f
    .line 225
    const-string/jumbo v3, "\ub9cc\uc5b5?"

    #@42
    .line 226
    const v4, 0xc774

    #@45
    const/4 v5, 0x1

    #@46
    .line 223
    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    #@49
    .line 222
    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    #@4b
    .line 190
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;
    .param p2, "units"    # Ljava/lang/String;
    .param p3, "levels"    # Ljava/lang/String;
    .param p4, "liang"    # C
    .param p5, "ko"    # Z

    #@0
    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    #@9
    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    #@f
    .line 200
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    #@15
    .line 201
    iput-char p4, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    #@17
    .line 202
    iput-boolean p5, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    #@19
    .line 197
    return-void
.end method
