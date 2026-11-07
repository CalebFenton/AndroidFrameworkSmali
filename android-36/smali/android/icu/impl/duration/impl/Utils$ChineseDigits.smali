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
.field public static final blacklist DEBUG:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final blacklist KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final blacklist SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

.field public static final blacklist TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;


# instance fields
.field final blacklist digits:[C

.field final blacklist ko:Z

.field final blacklist levels:[C

.field final blacklist liang:C

.field final blacklist units:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 9

    .line 210
    new-instance v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const/16 v4, 0x4c

    const/4 v5, 0x0

    const-string v1, "0123456789s"

    const-string v2, "sbq"

    const-string v3, "WYZ"

    invoke-direct/range {v0 .. v5}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->DEBUG:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 213
    new-instance v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const/16 v5, 0x5169

    const/4 v6, 0x0

    const-string v2, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    const-string v3, "\u5341\u767e\u5343"

    const-string v4, "\u842c\u5104\u5146"

    invoke-direct/range {v1 .. v6}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v1, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->TRADITIONAL:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 219
    new-instance v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const/16 v6, 0x4e24

    const/4 v7, 0x0

    const-string v3, "\u96f6\u4e00\u4e8c\u4e09\u56db\u4e94\u516d\u4e03\u516b\u4e5d\u5341"

    const-string v4, "\u5341\u767e\u5343"

    const-string v5, "\u4e07\u4ebf\u5146"

    invoke-direct/range {v2 .. v7}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v2, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->SIMPLIFIED:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    .line 227
    new-instance v3, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    const v7, 0xc774

    const/4 v8, 0x1

    const-string v4, "\uc601\uc77c\uc774\uc0bc\uc0ac\uc624\uc721\uce60\ud314\uad6c\uc2ed"

    const-string v5, "\uc2ed\ubc31\ucc9c"

    const-string v6, "\ub9cc\uc5b5?"

    invoke-direct/range {v3 .. v8}, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V

    sput-object v3, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->KOREAN:Landroid/icu/impl/duration/impl/Utils$ChineseDigits;

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;CZ)V
    .registers 7
    .param p1, "digits"    # Ljava/lang/String;
    .param p2, "units"    # Ljava/lang/String;
    .param p3, "levels"    # Ljava/lang/String;
    .param p4, "liang"    # C
    .param p5, "ko"    # Z

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->digits:[C

    .line 204
    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->units:[C

    .line 205
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->levels:[C

    .line 206
    iput-char p4, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->liang:C

    .line 207
    iput-boolean p5, p0, Landroid/icu/impl/duration/impl/Utils$ChineseDigits;->ko:Z

    .line 208
    return-void
.end method
