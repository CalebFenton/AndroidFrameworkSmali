.class public Landroid/icu/text/SpoofChecker;
.super Ljava/lang/Object;
.source "SpoofChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/SpoofChecker$RestrictionLevel;,
        Landroid/icu/text/SpoofChecker$Builder;,
        Landroid/icu/text/SpoofChecker$CheckResult;,
        Landroid/icu/text/SpoofChecker$SpoofData;,
        Landroid/icu/text/SpoofChecker$ScriptSet;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ALL_CHECKS:I = -0x1

.field public static final ANY_CASE:I = 0x8

.field public static final CHAR_LIMIT:I = 0x40

.field public static final INCLUSION:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INVISIBLE:I = 0x20

.field static final KEY_LENGTH_SHIFT:I = 0x1d

.field static final KEY_MULTIPLE_VALUES:I = 0x10000000

.field static final MAGIC:I = 0x3845fdef

.field static final MA_TABLE_FLAG:I = 0x8000000

.field public static final MIXED_NUMBERS:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIXED_SCRIPT_CONFUSABLE:I = 0x2

.field static final ML_TABLE_FLAG:I = 0x4000000

.field public static final RECOMMENDED:Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RESTRICTION_LEVEL:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final SA_TABLE_FLAG:I = 0x2000000

.field public static final SINGLE_SCRIPT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SINGLE_SCRIPT_CONFUSABLE:I = 0x1

.field static final SL_TABLE_FLAG:I = 0x1000000

.field public static final WHOLE_SCRIPT_CONFUSABLE:I = 0x4

.field private static nfdNormalizer:Landroid/icu/text/Normalizer2;


# instance fields
.field private fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

.field private fAllowedLocales:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field private fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

.field private fChecks:I

.field private fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

.field private fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;


# direct methods
.method static synthetic -get0(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/icu/text/SpoofChecker;)Ljava/util/Set;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/icu/text/SpoofChecker;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/icu/text/SpoofChecker;)Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/icu/text/SpoofChecker;Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/icu/text/SpoofChecker;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@2
    return-object p1
.end method

.method static synthetic -set2(Landroid/icu/text/SpoofChecker;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@2
    return p1
.end method

.method static synthetic -set3(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$RestrictionLevel;)Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2
    return-object p1
.end method

.method static synthetic -set4(Landroid/icu/text/SpoofChecker;Landroid/icu/text/SpoofChecker$SpoofData;)Landroid/icu/text/SpoofChecker$SpoofData;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@2
    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Landroid/icu/text/SpoofChecker;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    #@b
    .line 203
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@d
    const-string/jumbo v1, "[\\u0027\\u002D-\\u002E\\u003A\\u00B7\\u0375\\u058A\\u05F3-\\u05F4\\u06FD-\\u06FE\\u0F0B\\u200C-\\u200D\\u2010\\u2019\\u2027\\u30A0\\u30FB]"

    #@10
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@13
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@16
    move-result-object v0

    #@17
    sput-object v0, Landroid/icu/text/SpoofChecker;->INCLUSION:Landroid/icu/text/UnicodeSet;

    #@19
    .line 215
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1b
    .line 216
    const-string/jumbo v1, "[\\u0030-\\u0039\\u0041-\\u005A\\u005F\\u0061-\\u007A\\u00C0-\\u00D6\\u00D8-\\u00F6\\u00F8-\\u0131\\u0134-\\u013E\\u0141-\\u0148\\u014A-\\u017E\\u01A0-\\u01A1\\u01AF-\\u01B0\\u01CD-\\u01DC\\u01DE-\\u01E3\\u01E6-\\u01F0\\u01F4-\\u01F5\\u01F8-\\u021B\\u021E-\\u021F\\u0226-\\u0233\\u0259\\u02BB-\\u02BC\\u02EC\\u0300-\\u0304\\u0306-\\u030C\\u030F-\\u0311\\u0313-\\u0314\\u031B\\u0323-\\u0328\\u032D-\\u032E\\u0330-\\u0331\\u0335\\u0338-\\u0339\\u0342\\u0345\\u037B-\\u037D\\u0386\\u0388-\\u038A\\u038C\\u038E-\\u03A1\\u03A3-\\u03CE\\u03FC-\\u045F\\u048A-\\u0529\\u052E-\\u052F\\u0531-\\u0556\\u0559\\u0561-\\u0586\\u05B4\\u05D0-\\u05EA\\u05F0-\\u05F2\\u0620-\\u063F\\u0641-\\u0655\\u0660-\\u0669\\u0670-\\u0672\\u0674\\u0679-\\u068D\\u068F-\\u06D3\\u06D5\\u06E5-\\u06E6\\u06EE-\\u06FC\\u06FF\\u0750-\\u07B1\\u08A0-\\u08AC\\u08B2\\u0901-\\u094D\\u094F-\\u0950\\u0956-\\u0957\\u0960-\\u0963\\u0966-\\u096F\\u0971-\\u0977\\u0979-\\u097F\\u0981-\\u0983\\u0985-\\u098C\\u098F-\\u0990\\u0993-\\u09A8\\u09AA-\\u09B0\\u09B2\\u09B6-\\u09B9\\u09BC-\\u09C4\\u09C7-\\u09C8\\u09CB-\\u09CE\\u09D7\\u09E0-\\u09E3\\u09E6-\\u09F1\\u0A01-\\u0A03\\u0A05-\\u0A0A\\u0A0F-\\u0A10\\u0A13-\\u0A28\\u0A2A-\\u0A30\\u0A32\\u0A35\\u0A38-\\u0A39\\u0A3C\\u0A3E-\\u0A42\\u0A47-\\u0A48\\u0A4B-\\u0A4D\\u0A5C\\u0A66-\\u0A74\\u0A81-\\u0A83\\u0A85-\\u0A8D\\u0A8F-\\u0A91\\u0A93-\\u0AA8\\u0AAA-\\u0AB0\\u0AB2-\\u0AB3\\u0AB5-\\u0AB9\\u0ABC-\\u0AC5\\u0AC7-\\u0AC9\\u0ACB-\\u0ACD\\u0AD0\\u0AE0-\\u0AE3\\u0AE6-\\u0AEF\\u0B01-\\u0B03\\u0B05-\\u0B0C\\u0B0F-\\u0B10\\u0B13-\\u0B28\\u0B2A-\\u0B30\\u0B32-\\u0B33\\u0B35-\\u0B39\\u0B3C-\\u0B43\\u0B47-\\u0B48\\u0B4B-\\u0B4D\\u0B56-\\u0B57\\u0B5F-\\u0B61\\u0B66-\\u0B6F\\u0B71\\u0B82-\\u0B83\\u0B85-\\u0B8A\\u0B8E-\\u0B90\\u0B92-\\u0B95\\u0B99-\\u0B9A\\u0B9C\\u0B9E-\\u0B9F\\u0BA3-\\u0BA4\\u0BA8-\\u0BAA\\u0BAE-\\u0BB9\\u0BBE-\\u0BC2\\u0BC6-\\u0BC8\\u0BCA-\\u0BCD\\u0BD0\\u0BD7\\u0BE6-\\u0BEF\\u0C01-\\u0C03\\u0C05-\\u0C0C\\u0C0E-\\u0C10\\u0C12-\\u0C28\\u0C2A-\\u0C33\\u0C35-\\u0C39\\u0C3D-\\u0C44\\u0C46-\\u0C48\\u0C4A-\\u0C4D\\u0C55-\\u0C56\\u0C60-\\u0C61\\u0C66-\\u0C6F\\u0C82-\\u0C83\\u0C85-\\u0C8C\\u0C8E-\\u0C90\\u0C92-\\u0CA8\\u0CAA-\\u0CB3\\u0CB5-\\u0CB9\\u0CBC-\\u0CC4\\u0CC6-\\u0CC8\\u0CCA-\\u0CCD\\u0CD5-\\u0CD6\\u0CE0-\\u0CE3\\u0CE6-\\u0CEF\\u0CF1-\\u0CF2\\u0D02-\\u0D03\\u0D05-\\u0D0C\\u0D0E-\\u0D10\\u0D12-\\u0D3A\\u0D3D-\\u0D43\\u0D46-\\u0D48\\u0D4A-\\u0D4E\\u0D57\\u0D60-\\u0D61\\u0D66-\\u0D6F\\u0D7A-\\u0D7F\\u0D82-\\u0D83\\u0D85-\\u0D8E\\u0D91-\\u0D96\\u0D9A-\\u0DA5\\u0DA7-\\u0DB1\\u0DB3-\\u0DBB\\u0DBD\\u0DC0-\\u0DC6\\u0DCA\\u0DCF-\\u0DD4\\u0DD6\\u0DD8-\\u0DDE\\u0DF2\\u0E01-\\u0E32\\u0E34-\\u0E3A\\u0E40-\\u0E4E\\u0E50-\\u0E59\\u0E81-\\u0E82\\u0E84\\u0E87-\\u0E88\\u0E8A\\u0E8D\\u0E94-\\u0E97\\u0E99-\\u0E9F\\u0EA1-\\u0EA3\\u0EA5\\u0EA7\\u0EAA-\\u0EAB\\u0EAD-\\u0EB2\\u0EB4-\\u0EB9\\u0EBB-\\u0EBD\\u0EC0-\\u0EC4\\u0EC6\\u0EC8-\\u0ECD\\u0ED0-\\u0ED9\\u0EDE-\\u0EDF\\u0F00\\u0F20-\\u0F29\\u0F35\\u0F37\\u0F3E-\\u0F42\\u0F44-\\u0F47\\u0F49-\\u0F4C\\u0F4E-\\u0F51\\u0F53-\\u0F56\\u0F58-\\u0F5B\\u0F5D-\\u0F68\\u0F6A-\\u0F6C\\u0F71-\\u0F72\\u0F74\\u0F7A-\\u0F80\\u0F82-\\u0F84\\u0F86-\\u0F92\\u0F94-\\u0F97\\u0F99-\\u0F9C\\u0F9E-\\u0FA1\\u0FA3-\\u0FA6\\u0FA8-\\u0FAB\\u0FAD-\\u0FB8\\u0FBA-\\u0FBC\\u0FC6\\u1000-\\u1049\\u1050-\\u109D\\u10C7\\u10CD\\u10D0-\\u10F0\\u10F7-\\u10FA\\u10FD-\\u10FF\\u1200-\\u1248\\u124A-\\u124D\\u1250-\\u1256\\u1258\\u125A-\\u125D\\u1260-\\u1288\\u128A-\\u128D\\u1290-\\u12B0\\u12B2-\\u12B5\\u12B8-\\u12BE\\u12C0\\u12C2-\\u12C5\\u12C8-\\u12D6\\u12D8-\\u1310\\u1312-\\u1315\\u1318-\\u135A\\u135D-\\u135F\\u1380-\\u138F\\u1780-\\u17A2\\u17A5-\\u17A7\\u17A9-\\u17B3\\u17B6-\\u17CA\\u17D2\\u17D7\\u17DC\\u17E0-\\u17E9\\u1E00-\\u1E99\\u1EBF\\u1F00-\\u1F15\\u1F18-\\u1F1D\\u1F20-\\u1F45\\u1F48-\\u1F4D\\u1F50-\\u1F57\\u1F59\\u1F5B\\u1F5D\\u1F5F-\\u1F70\\u1F72\\u1F74\\u1F76\\u1F78\\u1F7A\\u1F7C\\u1F80-\\u1FB4\\u1FB6-\\u1FBA\\u1FBC\\u1FC2-\\u1FC4\\u1FC6-\\u1FC8\\u1FCA\\u1FCC\\u1FD0-\\u1FD2\\u1FD6-\\u1FDA\\u1FE0-\\u1FE2\\u1FE4-\\u1FEA\\u1FEC\\u1FF2-\\u1FF4\\u1FF6-\\u1FF8\\u1FFA\\u1FFC\\u2D27\\u2D2D\\u2D80-\\u2D96\\u2DA0-\\u2DA6\\u2DA8-\\u2DAE\\u2DB0-\\u2DB6\\u2DB8-\\u2DBE\\u2DC0-\\u2DC6\\u2DC8-\\u2DCE\\u2DD0-\\u2DD6\\u2DD8-\\u2DDE\\u3005-\\u3007\\u3041-\\u3096\\u3099-\\u309A\\u309D-\\u309E\\u30A1-\\u30FA\\u30FC-\\u30FE\\u3105-\\u312D\\u31A0-\\u31BA\\u3400-\\u4DB5\\u4E00-\\u9FCC\\uA660-\\uA661\\uA674-\\uA67B\\uA67F\\uA69F\\uA717-\\uA71F\\uA788\\uA78D-\\uA78E\\uA790-\\uA793\\uA7A0-\\uA7AA\\uA7FA\\uA9E7-\\uA9FE\\uAA60-\\uAA76\\uAA7A-\\uAA7F\\uAB01-\\uAB06\\uAB09-\\uAB0E\\uAB11-\\uAB16\\uAB20-\\uAB26\\uAB28-\\uAB2E\\uAC00-\\uD7A3\\uFA0E-\\uFA0F\\uFA11\\uFA13-\\uFA14\\uFA1F\\uFA21\\uFA23-\\uFA24\\uFA27-\\uFA29\\U0001B000-\\U0001B001\\U00020000-\\U0002A6D6\\U0002A700-\\U0002B734\\U0002B740-\\U0002B81D]"

    #@1e
    .line 215
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Ljava/lang/String;)V

    #@21
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@24
    move-result-object v0

    #@25
    sput-object v0, Landroid/icu/text/SpoofChecker;->RECOMMENDED:Landroid/icu/text/UnicodeSet;

    #@27
    .line 2083
    invoke-static {}, Landroid/icu/text/Normalizer2;->getNFDInstance()Landroid/icu/text/Normalizer2;

    #@2a
    move-result-object v0

    #@2b
    sput-object v0, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    #@2d
    .line 147
    return-void

    #@2e
    :cond_0
    const/4 v0, 0x1

    #@2f
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2051
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

    #@6
    .line 391
    return-void
.end method

.method synthetic constructor <init>(Landroid/icu/text/SpoofChecker;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/icu/text/SpoofChecker;-><init>()V

    #@3
    return-void
.end method

.method private confusableLookup(IILjava/lang/StringBuilder;)V
    .locals 22
    .param p1, "inChar"    # I
    .param p2, "tableMask"    # I
    .param p3, "dest"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1920
    const/4 v13, 0x0

    #@1
    .line 1921
    .local v13, "low":I
    const/4 v14, 0x0

    #@2
    .line 1922
    .local v14, "mid":I
    move-object/from16 v0, p0

    #@4
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@6
    move-object/from16 v18, v0

    #@8
    move-object/from16 v0, v18

    #@a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@c
    move-object/from16 v18, v0

    #@e
    move-object/from16 v0, v18

    #@10
    array-length v12, v0

    #@11
    .line 1924
    .local v12, "limit":I
    const/4 v8, 0x0

    #@12
    .line 1927
    .local v8, "foundChar":Z
    :goto_0
    sub-int v18, v12, v13

    #@14
    div-int/lit8 v6, v18, 0x2

    #@16
    .line 1928
    .local v6, "delta":I
    add-int v14, v13, v6

    #@18
    .line 1929
    move-object/from16 v0, p0

    #@1a
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@1c
    move-object/from16 v18, v0

    #@1e
    move-object/from16 v0, v18

    #@20
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@22
    move-object/from16 v18, v0

    #@24
    aget v18, v18, v14

    #@26
    const v19, 0x1fffff

    #@29
    and-int v15, v18, v19

    #@2b
    .line 1930
    .local v15, "midc":I
    move/from16 v0, p1

    #@2d
    if-ne v0, v15, :cond_1

    #@2f
    .line 1931
    const/4 v8, 0x1

    #@30
    .line 1941
    :cond_0
    if-nez v8, :cond_3

    #@32
    .line 1942
    move-object/from16 v0, p3

    #@34
    move/from16 v1, p1

    #@36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@39
    .line 1943
    return-void

    #@3a
    .line 1933
    :cond_1
    move/from16 v0, p1

    #@3c
    if-ge v0, v15, :cond_2

    #@3e
    .line 1934
    move v12, v14

    #@3f
    .line 1940
    :goto_1
    if-ge v13, v12, :cond_0

    #@41
    goto :goto_0

    #@42
    .line 1938
    :cond_2
    add-int/lit8 v13, v14, 0x1

    #@44
    goto :goto_1

    #@45
    .line 1946
    :cond_3
    const/4 v9, 0x0

    #@46
    .line 1947
    .local v9, "foundKey":Z
    move-object/from16 v0, p0

    #@48
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@4a
    move-object/from16 v18, v0

    #@4c
    move-object/from16 v0, v18

    #@4e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@50
    move-object/from16 v18, v0

    #@52
    aget v18, v18, v14

    #@54
    const/high16 v19, -0x1000000

    #@56
    and-int v10, v18, v19

    #@58
    .line 1948
    .local v10, "keyFlags":I
    and-int v18, v10, p2

    #@5a
    if-nez v18, :cond_8

    #@5c
    .line 1951
    const/high16 v18, 0x10000000

    #@5e
    and-int v18, v18, v10

    #@60
    if-eqz v18, :cond_5

    #@62
    .line 1953
    add-int/lit8 v4, v14, -0x1

    #@64
    .local v4, "altMid":I
    :goto_2
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@68
    move-object/from16 v18, v0

    #@6a
    move-object/from16 v0, v18

    #@6c
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@6e
    move-object/from16 v18, v0

    #@70
    aget v18, v18, v4

    #@72
    const v19, 0xffffff

    #@75
    and-int v18, v18, v19

    #@77
    move/from16 v0, v18

    #@79
    move/from16 v1, p1

    #@7b
    if-ne v0, v1, :cond_4

    #@7d
    .line 1954
    move-object/from16 v0, p0

    #@7f
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@81
    move-object/from16 v18, v0

    #@83
    move-object/from16 v0, v18

    #@85
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@87
    move-object/from16 v18, v0

    #@89
    aget v18, v18, v4

    #@8b
    const/high16 v19, -0x1000000

    #@8d
    and-int v10, v18, v19

    #@8f
    .line 1955
    and-int v18, v10, p2

    #@91
    if-eqz v18, :cond_6

    #@93
    .line 1956
    move v14, v4

    #@94
    .line 1957
    const/4 v9, 0x1

    #@95
    .line 1961
    :cond_4
    if-nez v9, :cond_5

    #@97
    .line 1962
    add-int/lit8 v4, v14, 0x1

    #@99
    :goto_3
    move-object/from16 v0, p0

    #@9b
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@9d
    move-object/from16 v18, v0

    #@9f
    move-object/from16 v0, v18

    #@a1
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@a3
    move-object/from16 v18, v0

    #@a5
    aget v18, v18, v4

    #@a7
    const v19, 0xffffff

    #@aa
    and-int v18, v18, v19

    #@ac
    move/from16 v0, v18

    #@ae
    move/from16 v1, p1

    #@b0
    if-ne v0, v1, :cond_5

    #@b2
    .line 1963
    move-object/from16 v0, p0

    #@b4
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@b6
    move-object/from16 v18, v0

    #@b8
    move-object/from16 v0, v18

    #@ba
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUKeys:[I

    #@bc
    move-object/from16 v18, v0

    #@be
    aget v18, v18, v4

    #@c0
    const/high16 v19, -0x1000000

    #@c2
    and-int v10, v18, v19

    #@c4
    .line 1964
    and-int v18, v10, p2

    #@c6
    if-eqz v18, :cond_7

    #@c8
    .line 1965
    move v14, v4

    #@c9
    .line 1966
    const/4 v9, 0x1

    #@ca
    .line 1972
    .end local v4    # "altMid":I
    :cond_5
    if-nez v9, :cond_8

    #@cc
    .line 1975
    move-object/from16 v0, p3

    #@ce
    move/from16 v1, p1

    #@d0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    #@d3
    .line 1976
    return-void

    #@d4
    .line 1953
    .restart local v4    # "altMid":I
    :cond_6
    add-int/lit8 v4, v4, -0x1

    #@d6
    goto :goto_2

    #@d7
    .line 1962
    :cond_7
    add-int/lit8 v4, v4, 0x1

    #@d9
    goto :goto_3

    #@da
    .line 1980
    .end local v4    # "altMid":I
    :cond_8
    invoke-static {v10}, Landroid/icu/text/SpoofChecker;->getKeyLength(I)I

    #@dd
    move-result v18

    #@de
    add-int/lit8 v16, v18, 0x1

    #@e0
    .line 1981
    .local v16, "stringLen":I
    move v11, v14

    #@e1
    .line 1985
    .local v11, "keyTableIndex":I
    move-object/from16 v0, p0

    #@e3
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@e5
    move-object/from16 v18, v0

    #@e7
    move-object/from16 v0, v18

    #@e9
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUValues:[S

    #@eb
    move-object/from16 v18, v0

    #@ed
    aget-short v17, v18, v11

    #@ef
    .line 1986
    .local v17, "value":S
    const/16 v18, 0x1

    #@f1
    move/from16 v0, v16

    #@f3
    move/from16 v1, v18

    #@f5
    if-ne v0, v1, :cond_9

    #@f7
    .line 1987
    move/from16 v0, v17

    #@f9
    int-to-char v0, v0

    #@fa
    move/from16 v18, v0

    #@fc
    move-object/from16 v0, p3

    #@fe
    move/from16 v1, v18

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@103
    .line 1988
    return-void

    #@104
    .line 1998
    :cond_9
    const/16 v18, 0x4

    #@106
    move/from16 v0, v16

    #@108
    move/from16 v1, v18

    #@10a
    if-ne v0, v1, :cond_c

    #@10c
    .line 1999
    const/4 v5, 0x0

    #@10d
    .line 2000
    .local v5, "dataOK":Z
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@111
    move-object/from16 v18, v0

    #@113
    move-object/from16 v0, v18

    #@115
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStringLengths:[Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;

    #@117
    move-object/from16 v19, v0

    #@119
    const/16 v18, 0x0

    #@11b
    move-object/from16 v0, v19

    #@11d
    array-length v0, v0

    #@11e
    move/from16 v20, v0

    #@120
    :goto_4
    move/from16 v0, v18

    #@122
    move/from16 v1, v20

    #@124
    if-ge v0, v1, :cond_a

    #@126
    aget-object v7, v19, v18

    #@128
    .line 2001
    .local v7, "el":Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    iget v0, v7, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fLastString:I

    #@12a
    move/from16 v21, v0

    #@12c
    move/from16 v0, v21

    #@12e
    move/from16 v1, v17

    #@130
    if-lt v0, v1, :cond_b

    #@132
    .line 2002
    iget v0, v7, Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;->fStrLength:I

    #@134
    move/from16 v16, v0

    #@136
    .line 2003
    const/4 v5, 0x1

    #@137
    .line 2007
    .end local v7    # "el":Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    :cond_a
    sget-boolean v18, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    #@139
    if-nez v18, :cond_c

    #@13b
    if-nez v5, :cond_c

    #@13d
    new-instance v18, Ljava/lang/AssertionError;

    #@13f
    invoke-direct/range {v18 .. v18}, Ljava/lang/AssertionError;-><init>()V

    #@142
    throw v18

    #@143
    .line 2000
    .restart local v7    # "el":Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    :cond_b
    add-int/lit8 v18, v18, 0x1

    #@145
    goto :goto_4

    #@146
    .line 2010
    .end local v5    # "dataOK":Z
    .end local v7    # "el":Landroid/icu/text/SpoofChecker$SpoofData$SpoofStringLengthsElement;
    :cond_c
    move-object/from16 v0, p0

    #@148
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@14a
    move-object/from16 v18, v0

    #@14c
    move-object/from16 v0, v18

    #@14e
    iget-object v0, v0, Landroid/icu/text/SpoofChecker$SpoofData;->fCFUStrings:Ljava/lang/String;

    #@150
    move-object/from16 v18, v0

    #@152
    add-int v19, v17, v16

    #@154
    move-object/from16 v0, p3

    #@156
    move-object/from16 v1, v18

    #@158
    move/from16 v2, v17

    #@15a
    move/from16 v3, v19

    #@15c
    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@15f
    .line 2011
    return-void
.end method

.method private getIdentifierInfo()Landroid/icu/text/IdentifierInfo;
    .locals 2

    #@0
    .prologue
    .line 2054
    const/4 v0, 0x0

    #@1
    .line 2055
    .local v0, "returnIdInfo":Landroid/icu/text/IdentifierInfo;
    monitor-enter p0

    #@2
    .line 2056
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

    #@4
    .line 2057
    .local v0, "returnIdInfo":Landroid/icu/text/IdentifierInfo;
    const/4 v1, 0x0

    #@5
    iput-object v1, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    monitor-exit p0

    #@8
    .line 2059
    if-nez v0, :cond_0

    #@a
    .line 2060
    new-instance v0, Landroid/icu/text/IdentifierInfo;

    #@c
    .end local v0    # "returnIdInfo":Landroid/icu/text/IdentifierInfo;
    invoke-direct {v0}, Landroid/icu/text/IdentifierInfo;-><init>()V

    #@f
    .line 2062
    .restart local v0    # "returnIdInfo":Landroid/icu/text/IdentifierInfo;
    :cond_0
    return-object v0

    #@10
    .line 2055
    .end local v0    # "returnIdInfo":Landroid/icu/text/IdentifierInfo;
    :catchall_0
    move-exception v1

    #@11
    monitor-exit p0

    #@12
    throw v1
.end method

.method static final getKeyLength(I)I
    .locals 1
    .param p0, "x"    # I

    #@0
    .prologue
    .line 2140
    shr-int/lit8 v0, p0, 0x1d

    #@2
    and-int/lit8 v0, v0, 0x3

    #@4
    return v0
.end method

.method private releaseIdentifierInfo(Landroid/icu/text/IdentifierInfo;)V
    .locals 1
    .param p1, "idInfo"    # Landroid/icu/text/IdentifierInfo;

    #@0
    .prologue
    .line 2067
    if-eqz p1, :cond_1

    #@2
    .line 2068
    monitor-enter p0

    #@3
    .line 2069
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2070
    iput-object p1, p0, Landroid/icu/text/SpoofChecker;->fCachedIdentifierInfo:Landroid/icu/text/IdentifierInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :cond_0
    monitor-exit p0

    #@a
    .line 2066
    :cond_1
    return-void

    #@b
    .line 2068
    :catchall_0
    move-exception v0

    #@c
    monitor-exit p0

    #@d
    throw v0
.end method

.method private wholeScriptCheck(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "result"    # Landroid/icu/text/SpoofChecker$ScriptSet;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x1

    #@2
    .line 2021
    const/4 v3, 0x0

    #@3
    .line 2024
    .local v3, "inputIdx":I
    iget v5, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@5
    and-int/lit8 v5, v5, 0x8

    #@7
    if-eqz v5, :cond_1

    #@9
    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@b
    iget-object v4, v5, Landroid/icu/text/SpoofChecker$SpoofData;->fAnyCaseTrie:Landroid/icu/impl/Trie2;

    #@d
    .line 2025
    .local v4, "table":Landroid/icu/impl/Trie2;
    :goto_0
    invoke-virtual {p2}, Landroid/icu/text/SpoofChecker$ScriptSet;->setAll()V

    #@10
    .line 2026
    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@13
    move-result v5

    #@14
    if-ge v3, v5, :cond_5

    #@16
    .line 2027
    invoke-static {p1, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@19
    move-result v0

    #@1a
    .line 2028
    .local v0, "c":I
    invoke-static {p1, v3, v6}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@1d
    move-result v3

    #@1e
    .line 2029
    invoke-virtual {v4, v0}, Landroid/icu/impl/Trie2;->get(I)I

    #@21
    move-result v2

    #@22
    .line 2030
    .local v2, "index":I
    if-nez v2, :cond_4

    #@24
    .line 2035
    invoke-static {v0}, Landroid/icu/lang/UScript;->getScript(I)I

    #@27
    move-result v1

    #@28
    .line 2036
    .local v1, "cpScript":I
    sget-boolean v5, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    #@2a
    if-nez v5, :cond_3

    #@2c
    if-le v1, v6, :cond_2

    #@2e
    move v5, v6

    #@2f
    :goto_2
    if-nez v5, :cond_3

    #@31
    new-instance v5, Ljava/lang/AssertionError;

    #@33
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@36
    throw v5

    #@37
    .line 2024
    .end local v0    # "c":I
    .end local v1    # "cpScript":I
    .end local v2    # "index":I
    .end local v4    # "table":Landroid/icu/impl/Trie2;
    :cond_1
    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@39
    iget-object v4, v5, Landroid/icu/text/SpoofChecker$SpoofData;->fLowerCaseTrie:Landroid/icu/impl/Trie2;

    #@3b
    .restart local v4    # "table":Landroid/icu/impl/Trie2;
    goto :goto_0

    #@3c
    .restart local v0    # "c":I
    .restart local v1    # "cpScript":I
    .restart local v2    # "index":I
    :cond_2
    move v5, v7

    #@3d
    .line 2036
    goto :goto_2

    #@3e
    .line 2037
    :cond_3
    invoke-virtual {p2, v1}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersect(I)V

    #@41
    goto :goto_1

    #@42
    .line 2038
    .end local v1    # "cpScript":I
    :cond_4
    if-eq v2, v6, :cond_0

    #@44
    .line 2041
    iget-object v5, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@46
    iget-object v5, v5, Landroid/icu/text/SpoofChecker$SpoofData;->fScriptSets:[Landroid/icu/text/SpoofChecker$ScriptSet;

    #@48
    aget-object v5, v5, v2

    #@4a
    invoke-virtual {p2, v5}, Landroid/icu/text/SpoofChecker$ScriptSet;->intersect(Landroid/icu/text/SpoofChecker$ScriptSet;)V

    #@4d
    goto :goto_1

    #@4e
    .line 2020
    .end local v0    # "c":I
    .end local v2    # "index":I
    :cond_5
    return-void
.end method


# virtual methods
.method public areConfusable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    const/4 v11, 0x0

    #@2
    .line 1741
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@4
    and-int/lit8 v10, v10, 0x7

    #@6
    if-nez v10, :cond_0

    #@8
    .line 1742
    new-instance v10, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v11, "No confusable checks are enabled."

    #@d
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v10

    #@11
    .line 1744
    :cond_0
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@13
    and-int/lit8 v0, v10, 0x8

    #@15
    .line 1746
    .local v0, "flagsForSkeleton":I
    const/4 v3, 0x0

    #@16
    .line 1747
    .local v3, "result":I
    invoke-direct {p0}, Landroid/icu/text/SpoofChecker;->getIdentifierInfo()Landroid/icu/text/IdentifierInfo;

    #@19
    move-result-object v1

    #@1a
    .line 1748
    .local v1, "identifierInfo":Landroid/icu/text/IdentifierInfo;
    invoke-virtual {v1, p1}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    #@1d
    .line 1749
    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScriptCount()I

    #@20
    move-result v5

    #@21
    .line 1750
    .local v5, "s1ScriptCount":I
    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScripts()Ljava/util/BitSet;

    #@24
    move-result-object v10

    #@25
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    #@28
    move-result v4

    #@29
    .line 1751
    .local v4, "s1FirstScript":I
    invoke-virtual {v1, p2}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    #@2c
    .line 1752
    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScriptCount()I

    #@2f
    move-result v8

    #@30
    .line 1753
    .local v8, "s2ScriptCount":I
    invoke-virtual {v1}, Landroid/icu/text/IdentifierInfo;->getScripts()Ljava/util/BitSet;

    #@33
    move-result-object v10

    #@34
    invoke-virtual {v10, v11}, Ljava/util/BitSet;->nextSetBit(I)I

    #@37
    move-result v7

    #@38
    .line 1754
    .local v7, "s2FirstScript":I
    invoke-direct {p0, v1}, Landroid/icu/text/SpoofChecker;->releaseIdentifierInfo(Landroid/icu/text/IdentifierInfo;)V

    #@3b
    .line 1756
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@3d
    and-int/lit8 v10, v10, 0x1

    #@3f
    if-eqz v10, :cond_1

    #@41
    .line 1758
    if-gt v5, v12, :cond_1

    #@43
    if-gt v8, v12, :cond_1

    #@45
    if-ne v4, v7, :cond_1

    #@47
    .line 1759
    or-int/lit8 v0, v0, 0x1

    #@49
    .line 1760
    invoke-virtual {p0, v0, p1}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 1761
    .local v6, "s1Skeleton":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    #@50
    move-result-object v9

    #@51
    .line 1762
    .local v9, "s2Skeleton":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@54
    move-result v10

    #@55
    if-eqz v10, :cond_1

    #@57
    .line 1763
    const/4 v3, 0x1

    #@58
    .line 1768
    .end local v6    # "s1Skeleton":Ljava/lang/String;
    .end local v9    # "s2Skeleton":Ljava/lang/String;
    :cond_1
    and-int/lit8 v10, v3, 0x1

    #@5a
    if-eqz v10, :cond_2

    #@5c
    .line 1772
    return v3

    #@5d
    .line 1777
    :cond_2
    if-gt v5, v12, :cond_6

    #@5f
    if-gt v8, v12, :cond_6

    #@61
    .line 1778
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@63
    and-int/lit8 v10, v10, 0x4

    #@65
    if-eqz v10, :cond_5

    #@67
    const/4 v2, 0x1

    #@68
    .line 1781
    .local v2, "possiblyWholeScriptConfusables":Z
    :goto_0
    iget v10, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@6a
    and-int/lit8 v10, v10, 0x2

    #@6c
    if-nez v10, :cond_3

    #@6e
    if-eqz v2, :cond_4

    #@70
    .line 1785
    :cond_3
    and-int/lit8 v0, v0, -0x2

    #@72
    .line 1786
    invoke-virtual {p0, v0, p1}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    #@75
    move-result-object v6

    #@76
    .line 1787
    .restart local v6    # "s1Skeleton":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Landroid/icu/text/SpoofChecker;->getSkeleton(ILjava/lang/String;)Ljava/lang/String;

    #@79
    move-result-object v9

    #@7a
    .line 1788
    .restart local v9    # "s2Skeleton":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v10

    #@7e
    if-eqz v10, :cond_4

    #@80
    .line 1789
    or-int/lit8 v3, v3, 0x2

    #@82
    .line 1790
    if-eqz v2, :cond_4

    #@84
    .line 1791
    or-int/lit8 v3, v3, 0x4

    #@86
    .line 1795
    .end local v6    # "s1Skeleton":Ljava/lang/String;
    .end local v9    # "s2Skeleton":Ljava/lang/String;
    :cond_4
    return v3

    #@87
    .line 1778
    .end local v2    # "possiblyWholeScriptConfusables":Z
    :cond_5
    const/4 v2, 0x0

    #@88
    .restart local v2    # "possiblyWholeScriptConfusables":Z
    goto :goto_0

    #@89
    .line 1777
    .end local v2    # "possiblyWholeScriptConfusables":Z
    :cond_6
    const/4 v2, 0x0

    #@8a
    .restart local v2    # "possiblyWholeScriptConfusables":Z
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1874
    instance-of v1, p1, Landroid/icu/text/SpoofChecker;

    #@3
    if-nez v1, :cond_0

    #@5
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 1875
    check-cast v0, Landroid/icu/text/SpoofChecker;

    #@9
    .line 1876
    .local v0, "otherSC":Landroid/icu/text/SpoofChecker;
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@b
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 1877
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@11
    if-eqz v1, :cond_1

    #@13
    .line 1878
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@15
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fSpoofData:Landroid/icu/text/SpoofChecker$SpoofData;

    #@17
    invoke-virtual {v1, v2}, Landroid/icu/text/SpoofChecker$SpoofData;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    .line 1881
    :cond_1
    iget v1, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@1f
    iget v2, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@21
    if-eq v1, v2, :cond_3

    #@23
    return v3

    #@24
    .line 1879
    :cond_2
    return v3

    #@25
    .line 1882
    :cond_3
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@27
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@29
    if-eq v1, v2, :cond_4

    #@2b
    .line 1883
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@2d
    if-eqz v1, :cond_4

    #@2f
    .line 1884
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@31
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@33
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_6

    #@39
    .line 1887
    :cond_4
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@3b
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@3d
    if-eq v1, v2, :cond_5

    #@3f
    .line 1888
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@41
    if-eqz v1, :cond_5

    #@43
    .line 1889
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@45
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@47
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_7

    #@4d
    .line 1892
    :cond_5
    iget-object v1, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@4f
    iget-object v2, v0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@51
    if-eq v1, v2, :cond_8

    #@53
    .line 1893
    return v3

    #@54
    .line 1885
    :cond_6
    return v3

    #@55
    .line 1890
    :cond_7
    return v3

    #@56
    .line 1895
    :cond_8
    const/4 v1, 0x1

    #@57
    return v1
.end method

.method public failsChecks(Ljava/lang/String;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1710
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/SpoofChecker;->failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public failsChecks(Ljava/lang/String;Landroid/icu/text/SpoofChecker$CheckResult;)Z
    .locals 17
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "checkResult"    # Landroid/icu/text/SpoofChecker$CheckResult;

    #@0
    .prologue
    .line 1567
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@3
    move-result v7

    #@4
    .line 1569
    .local v7, "length":I
    const/4 v11, 0x0

    #@5
    .line 1570
    .local v11, "result":I
    if-eqz p2, :cond_0

    #@7
    .line 1571
    const/4 v15, 0x0

    #@8
    move-object/from16 v0, p2

    #@a
    iput v15, v0, Landroid/icu/text/SpoofChecker$CheckResult;->position:I

    #@c
    .line 1572
    const/4 v15, 0x0

    #@d
    move-object/from16 v0, p2

    #@f
    iput-object v15, v0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    #@11
    .line 1573
    const/4 v15, 0x0

    #@12
    move-object/from16 v0, p2

    #@14
    iput-object v15, v0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@16
    .line 1578
    :cond_0
    const/4 v6, 0x0

    #@17
    .line 1579
    .local v6, "identifierInfo":Landroid/icu/text/IdentifierInfo;
    move-object/from16 v0, p0

    #@19
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@1b
    and-int/lit16 v15, v15, 0x90

    #@1d
    if-eqz v15, :cond_1

    #@1f
    .line 1580
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SpoofChecker;->getIdentifierInfo()Landroid/icu/text/IdentifierInfo;

    #@22
    move-result-object v15

    #@23
    move-object/from16 v0, p1

    #@25
    invoke-virtual {v15, v0}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    #@28
    move-result-object v15

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@2d
    move-object/from16 v16, v0

    #@2f
    invoke-virtual/range {v15 .. v16}, Landroid/icu/text/IdentifierInfo;->setIdentifierProfile(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/IdentifierInfo;

    #@32
    move-result-object v6

    #@33
    .line 1583
    .end local v6    # "identifierInfo":Landroid/icu/text/IdentifierInfo;
    :cond_1
    move-object/from16 v0, p0

    #@35
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@37
    and-int/lit8 v15, v15, 0x10

    #@39
    if-eqz v15, :cond_3

    #@3b
    .line 1584
    invoke-virtual {v6}, Landroid/icu/text/IdentifierInfo;->getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@3e
    move-result-object v14

    #@3f
    .line 1585
    .local v14, "textRestrictionLevel":Landroid/icu/text/SpoofChecker$RestrictionLevel;
    move-object/from16 v0, p0

    #@41
    iget-object v15, v0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@43
    invoke-virtual {v14, v15}, Landroid/icu/text/SpoofChecker$RestrictionLevel;->compareTo(Ljava/lang/Enum;)I

    #@46
    move-result v15

    #@47
    if-lez v15, :cond_2

    #@49
    .line 1586
    const/16 v11, 0x10

    #@4b
    .line 1588
    :cond_2
    if-eqz p2, :cond_3

    #@4d
    .line 1589
    move-object/from16 v0, p2

    #@4f
    iput-object v14, v0, Landroid/icu/text/SpoofChecker$CheckResult;->restrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@51
    .line 1593
    .end local v14    # "textRestrictionLevel":Landroid/icu/text/SpoofChecker$RestrictionLevel;
    :cond_3
    move-object/from16 v0, p0

    #@53
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@55
    and-int/lit16 v15, v15, 0x80

    #@57
    if-eqz v15, :cond_5

    #@59
    .line 1594
    invoke-virtual {v6}, Landroid/icu/text/IdentifierInfo;->getNumerics()Landroid/icu/text/UnicodeSet;

    #@5c
    move-result-object v10

    #@5d
    .line 1595
    .local v10, "numerics":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v10}, Landroid/icu/text/UnicodeSet;->size()I

    #@60
    move-result v15

    #@61
    const/16 v16, 0x1

    #@63
    move/from16 v0, v16

    #@65
    if-le v15, v0, :cond_4

    #@67
    .line 1596
    or-int/lit16 v11, v11, 0x80

    #@69
    .line 1598
    :cond_4
    if-eqz p2, :cond_5

    #@6b
    .line 1599
    move-object/from16 v0, p2

    #@6d
    iput-object v10, v0, Landroid/icu/text/SpoofChecker$CheckResult;->numerics:Landroid/icu/text/UnicodeSet;

    #@6f
    .line 1603
    .end local v10    # "numerics":Landroid/icu/text/UnicodeSet;
    :cond_5
    move-object/from16 v0, p0

    #@71
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@73
    and-int/lit8 v15, v15, 0x40

    #@75
    if-eqz v15, :cond_7

    #@77
    .line 1606
    const/4 v5, 0x0

    #@78
    .local v5, "i":I
    :cond_6
    if-ge v5, v7, :cond_7

    #@7a
    .line 1608
    move-object/from16 v0, p1

    #@7c
    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@7f
    move-result v1

    #@80
    .line 1609
    .local v1, "c":I
    const/4 v15, 0x1

    #@81
    move-object/from16 v0, p1

    #@83
    invoke-static {v0, v5, v15}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@86
    move-result v5

    #@87
    .line 1610
    move-object/from16 v0, p0

    #@89
    iget-object v15, v0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@8b
    invoke-virtual {v15, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@8e
    move-result v15

    #@8f
    if-nez v15, :cond_6

    #@91
    .line 1611
    or-int/lit8 v11, v11, 0x40

    #@93
    .line 1617
    .end local v1    # "c":I
    .end local v5    # "i":I
    :cond_7
    move-object/from16 v0, p0

    #@95
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@97
    and-int/lit8 v15, v15, 0x26

    #@99
    if-eqz v15, :cond_f

    #@9b
    .line 1619
    sget-object v15, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    #@9d
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v15, v0}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@a2
    move-result-object v9

    #@a3
    .line 1621
    .local v9, "nfdText":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a5
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@a7
    and-int/lit8 v15, v15, 0x20

    #@a9
    if-eqz v15, :cond_c

    #@ab
    .line 1627
    const/4 v3, 0x0

    #@ac
    .line 1628
    .local v3, "firstNonspacingMark":I
    const/4 v4, 0x0

    #@ad
    .line 1629
    .local v4, "haveMultipleMarks":Z
    new-instance v8, Landroid/icu/text/UnicodeSet;

    #@af
    invoke-direct {v8}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@b2
    .line 1631
    .local v8, "marksSeenSoFar":Landroid/icu/text/UnicodeSet;
    const/4 v5, 0x0

    #@b3
    .restart local v5    # "i":I
    :cond_8
    :goto_0
    if-ge v5, v7, :cond_c

    #@b5
    .line 1632
    invoke-static {v9, v5}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@b8
    move-result v1

    #@b9
    .line 1633
    .restart local v1    # "c":I
    const/4 v15, 0x1

    #@ba
    invoke-static {v9, v5, v15}, Ljava/lang/Character;->offsetByCodePoints(Ljava/lang/CharSequence;II)I

    #@bd
    move-result v5

    #@be
    .line 1634
    invoke-static {v1}, Ljava/lang/Character;->getType(I)I

    #@c1
    move-result v15

    #@c2
    const/16 v16, 0x6

    #@c4
    move/from16 v0, v16

    #@c6
    if-eq v15, v0, :cond_9

    #@c8
    .line 1635
    const/4 v3, 0x0

    #@c9
    .line 1636
    if-eqz v4, :cond_8

    #@cb
    .line 1637
    invoke-virtual {v8}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@ce
    .line 1638
    const/4 v4, 0x0

    #@cf
    goto :goto_0

    #@d0
    .line 1642
    :cond_9
    if-nez v3, :cond_a

    #@d2
    .line 1643
    move v3, v1

    #@d3
    .line 1644
    goto :goto_0

    #@d4
    .line 1646
    :cond_a
    if-nez v4, :cond_b

    #@d6
    .line 1647
    invoke-virtual {v8, v3}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@d9
    .line 1648
    const/4 v4, 0x1

    #@da
    .line 1650
    :cond_b
    invoke-virtual {v8, v1}, Landroid/icu/text/UnicodeSet;->contains(I)Z

    #@dd
    move-result v15

    #@de
    if-eqz v15, :cond_11

    #@e0
    .line 1653
    or-int/lit8 v11, v11, 0x20

    #@e2
    .line 1660
    .end local v1    # "c":I
    .end local v3    # "firstNonspacingMark":I
    .end local v4    # "haveMultipleMarks":Z
    .end local v5    # "i":I
    .end local v8    # "marksSeenSoFar":Landroid/icu/text/UnicodeSet;
    :cond_c
    move-object/from16 v0, p0

    #@e4
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@e6
    and-int/lit8 v15, v15, 0x6

    #@e8
    if-eqz v15, :cond_f

    #@ea
    .line 1674
    if-nez v6, :cond_d

    #@ec
    .line 1675
    invoke-direct/range {p0 .. p0}, Landroid/icu/text/SpoofChecker;->getIdentifierInfo()Landroid/icu/text/IdentifierInfo;

    #@ef
    move-result-object v6

    #@f0
    .line 1676
    .local v6, "identifierInfo":Landroid/icu/text/IdentifierInfo;
    move-object/from16 v0, p1

    #@f2
    invoke-virtual {v6, v0}, Landroid/icu/text/IdentifierInfo;->setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;

    #@f5
    .line 1678
    .end local v6    # "identifierInfo":Landroid/icu/text/IdentifierInfo;
    :cond_d
    invoke-virtual {v6}, Landroid/icu/text/IdentifierInfo;->getScriptCount()I

    #@f8
    move-result v12

    #@f9
    .line 1680
    .local v12, "scriptCount":I
    new-instance v13, Landroid/icu/text/SpoofChecker$ScriptSet;

    #@fb
    invoke-direct {v13}, Landroid/icu/text/SpoofChecker$ScriptSet;-><init>()V

    #@fe
    .line 1681
    .local v13, "scripts":Landroid/icu/text/SpoofChecker$ScriptSet;
    move-object/from16 v0, p0

    #@100
    invoke-direct {v0, v9, v13}, Landroid/icu/text/SpoofChecker;->wholeScriptCheck(Ljava/lang/CharSequence;Landroid/icu/text/SpoofChecker$ScriptSet;)V

    #@103
    .line 1682
    invoke-virtual {v13}, Landroid/icu/text/SpoofChecker$ScriptSet;->countMembers()I

    #@106
    move-result v2

    #@107
    .line 1684
    .local v2, "confusableScriptCount":I
    move-object/from16 v0, p0

    #@109
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@10b
    and-int/lit8 v15, v15, 0x4

    #@10d
    if-eqz v15, :cond_e

    #@10f
    const/4 v15, 0x2

    #@110
    if-lt v2, v15, :cond_e

    #@112
    const/4 v15, 0x1

    #@113
    if-ne v12, v15, :cond_e

    #@115
    .line 1685
    or-int/lit8 v11, v11, 0x4

    #@117
    .line 1688
    :cond_e
    move-object/from16 v0, p0

    #@119
    iget v15, v0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@11b
    and-int/lit8 v15, v15, 0x2

    #@11d
    if-eqz v15, :cond_f

    #@11f
    const/4 v15, 0x1

    #@120
    if-lt v2, v15, :cond_f

    #@122
    const/4 v15, 0x1

    #@123
    if-le v12, v15, :cond_f

    #@125
    .line 1689
    or-int/lit8 v11, v11, 0x2

    #@127
    .line 1693
    .end local v2    # "confusableScriptCount":I
    .end local v9    # "nfdText":Ljava/lang/String;
    .end local v12    # "scriptCount":I
    .end local v13    # "scripts":Landroid/icu/text/SpoofChecker$ScriptSet;
    :cond_f
    if-eqz p2, :cond_10

    #@129
    .line 1694
    move-object/from16 v0, p2

    #@12b
    iput v11, v0, Landroid/icu/text/SpoofChecker$CheckResult;->checks:I

    #@12d
    .line 1696
    :cond_10
    move-object/from16 v0, p0

    #@12f
    invoke-direct {v0, v6}, Landroid/icu/text/SpoofChecker;->releaseIdentifierInfo(Landroid/icu/text/IdentifierInfo;)V

    #@132
    .line 1697
    if-eqz v11, :cond_12

    #@134
    const/4 v15, 0x1

    #@135
    :goto_1
    return v15

    #@136
    .line 1656
    .restart local v1    # "c":I
    .restart local v3    # "firstNonspacingMark":I
    .restart local v4    # "haveMultipleMarks":Z
    .restart local v5    # "i":I
    .restart local v8    # "marksSeenSoFar":Landroid/icu/text/UnicodeSet;
    .restart local v9    # "nfdText":Ljava/lang/String;
    :cond_11
    invoke-virtual {v8, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@139
    goto/16 :goto_0

    #@13b
    .line 1697
    .end local v1    # "c":I
    .end local v3    # "firstNonspacingMark":I
    .end local v4    # "haveMultipleMarks":Z
    .end local v5    # "i":I
    .end local v8    # "marksSeenSoFar":Landroid/icu/text/UnicodeSet;
    .end local v9    # "nfdText":Ljava/lang/String;
    :cond_12
    const/4 v15, 0x0

    #@13c
    goto :goto_1
.end method

.method public getAllowedChars()Landroid/icu/text/UnicodeSet;
    .locals 1

    #@0
    .prologue
    .line 1502
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedCharsSet:Landroid/icu/text/UnicodeSet;

    #@2
    return-object v0
.end method

.method public getAllowedJavaLocales()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1484
    new-instance v0, Ljava/util/HashSet;

    #@2
    iget-object v3, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@4
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@7
    move-result v3

    #@8
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(I)V

    #@b
    .line 1485
    .local v0, "locales":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/util/Locale;>;"
    iget-object v3, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@d
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v2

    #@11
    .local v2, "uloc$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid/icu/util/ULocale;

    #@1d
    .line 1486
    .local v1, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/util/ULocale;->toLocale()Ljava/util/Locale;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 1488
    .end local v1    # "uloc":Landroid/icu/util/ULocale;
    :cond_0
    return-object v0
.end method

.method public getAllowedLocales()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1472
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fAllowedLocales:Ljava/util/Set;

    #@2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getChecks()I
    .locals 1

    #@0
    .prologue
    .line 1455
    iget v0, p0, Landroid/icu/text/SpoofChecker;->fChecks:I

    #@2
    return v0
.end method

.method public getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1445
    iget-object v0, p0, Landroid/icu/text/SpoofChecker;->fRestrictionLevel:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@2
    return-object v0
.end method

.method public getSkeleton(ILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1825
    const/4 v6, 0x0

    #@1
    .line 1826
    .local v6, "tableMask":I
    sparse-switch p1, :sswitch_data_0

    #@4
    .line 1841
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v8, "SpoofChecker.getSkeleton(), bad type value."

    #@9
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v7

    #@d
    .line 1828
    :sswitch_0
    const/high16 v6, 0x4000000

    #@f
    .line 1847
    :goto_0
    sget-object v7, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    #@11
    invoke-virtual {v7, p2}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1848
    .local v2, "nfdId":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@18
    move-result v3

    #@19
    .line 1849
    .local v3, "normalizedLen":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    .line 1850
    .local v4, "skelSB":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@1f
    .local v1, "inputIndex":I
    :goto_1
    if-ge v1, v3, :cond_0

    #@21
    .line 1851
    invoke-static {v2, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@24
    move-result v0

    #@25
    .line 1852
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    #@28
    move-result v7

    #@29
    add-int/2addr v1, v7

    #@2a
    .line 1853
    invoke-direct {p0, v0, v6, v4}, Landroid/icu/text/SpoofChecker;->confusableLookup(IILjava/lang/StringBuilder;)V

    #@2d
    goto :goto_1

    #@2e
    .line 1831
    .end local v0    # "c":I
    .end local v1    # "inputIndex":I
    .end local v2    # "nfdId":Ljava/lang/String;
    .end local v3    # "normalizedLen":I
    .end local v4    # "skelSB":Ljava/lang/StringBuilder;
    :sswitch_1
    const/high16 v6, 0x1000000

    #@30
    .line 1832
    goto :goto_0

    #@31
    .line 1834
    :sswitch_2
    const/high16 v6, 0x8000000

    #@33
    .line 1835
    goto :goto_0

    #@34
    .line 1837
    :sswitch_3
    const/high16 v6, 0x2000000

    #@36
    .line 1838
    goto :goto_0

    #@37
    .line 1855
    .restart local v1    # "inputIndex":I
    .restart local v2    # "nfdId":Ljava/lang/String;
    .restart local v3    # "normalizedLen":I
    .restart local v4    # "skelSB":Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v5

    #@3b
    .line 1856
    .local v5, "skelStr":Ljava/lang/String;
    sget-object v7, Landroid/icu/text/SpoofChecker;->nfdNormalizer:Landroid/icu/text/Normalizer2;

    #@3d
    invoke-virtual {v7, v5}, Landroid/icu/text/Normalizer2;->normalize(Ljava/lang/CharSequence;)Ljava/lang/String;

    #@40
    move-result-object v5

    #@41
    .line 1857
    return-object v5

    #@42
    .line 1826
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x8 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1906
    sget-boolean v0, Landroid/icu/text/SpoofChecker;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_0

    #@4
    new-instance v0, Ljava/lang/AssertionError;

    #@6
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@9
    throw v0

    #@a
    .line 1907
    :cond_0
    const/16 v0, 0x4d2

    #@c
    return v0
.end method
