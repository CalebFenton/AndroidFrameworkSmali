.class Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DictionaryCache"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field greylist-max-o fBoundary:I

.field blacklist fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

.field greylist-max-o fFirstRuleStatusIndex:I

.field greylist-max-o fLimit:I

.field greylist-max-o fOtherRuleStatusIndex:I

.field greylist-max-o fPositionInCache:I

.field greylist-max-o fStart:I

.field greylist-max-o fStatusIndex:I

.field final synthetic blacklist this$0:Landroid/icu/text/RuleBasedBreakIterator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1065
    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RuleBasedBreakIterator;)V
    .registers 3
    .param p1, "this$0"    # Landroid/icu/text/RuleBasedBreakIterator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1244
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1245
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1246
    new-instance v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-direct {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    .line 1247
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;)V
    .registers 5
    .param p1, "this$0"    # Landroid/icu/text/RuleBasedBreakIterator;
    .param p2, "src"    # Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1254
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1256
    :try_start_5
    iget-object v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;
    :try_end_f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_5 .. :try_end_f} :catch_2d

    .line 1260
    nop

    .line 1261
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1262
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1263
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1264
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1265
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1266
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1267
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    .line 1268
    return-void

    .line 1258
    :catch_2d
    move-exception v0

    .line 1259
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method greylist-max-o following(I)Z
    .registers 8
    .param p1, "fromPos"    # I

    .line 1077
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_6e

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ge p1, v0, :cond_b

    goto :goto_6e

    .line 1084
    :cond_b
    const/4 v0, 0x0

    .line 1085
    .local v0, "r":I
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    const/4 v4, 0x1

    if-ltz v3, :cond_47

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v5}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v5

    if-ge v3, v5, :cond_47

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v3, v5}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v3

    if-ne v3, p1, :cond_47

    .line 1086
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1087
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v5}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v5

    if-lt v3, v5, :cond_37

    .line 1088
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1089
    return v2

    .line 1091
    :cond_37
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    .line 1092
    nop

    .line 1093
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1094
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    .line 1095
    return v4

    .line 1100
    :cond_47
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    :goto_49
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v5}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v5

    if-ge v3, v5, :cond_6a

    .line 1101
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v3, v5}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    .line 1102
    if-le v0, p1, :cond_64

    .line 1103
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1104
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    .line 1105
    return v4

    .line 1100
    :cond_64
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    add-int/2addr v3, v4

    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    goto :goto_49

    .line 1110
    :cond_6a
    nop

    .line 1111
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1112
    return v2

    .line 1078
    .end local v0    # "r":I
    :cond_6e
    :goto_6e
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1079
    return v2
.end method

.method greylist-max-o populateDictionary(IIII)V
    .registers 16
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I
    .param p3, "firstRuleStatus"    # I
    .param p4, "otherRuleStatus"    # I

    .line 1166
    sub-int v0, p2, p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_6

    .line 1167
    return-void

    .line 1170
    :cond_6
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->reset()V

    .line 1171
    iput p3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1172
    iput p4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1174
    move v4, p1

    .line 1175
    .local v4, "rangeStart":I
    move v5, p2

    .line 1179
    .local v5, "rangeEnd":I
    const/4 v0, 0x0

    .line 1185
    .local v0, "foundBreakCount":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 1186
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 1187
    .local v1, "c":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v2, v1}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v2

    int-to-short v2, v2

    .line 1188
    .local v2, "category":I
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v8, v3, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    move v9, v2

    .line 1191
    .end local v2    # "category":I
    .local v8, "dictStart":I
    .local v9, "category":I
    :goto_37
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v2

    move v10, v2

    .local v10, "current":I
    if-ge v2, v5, :cond_5c

    if-ge v9, v8, :cond_5c

    .line 1192
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 1193
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v2, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v2, v2, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v2, v1}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v2

    int-to-short v9, v2

    goto :goto_37

    .line 1195
    :cond_5c
    if-lt v10, v5, :cond_90

    .line 1196
    nop

    .line 1219
    if-lez v0, :cond_8f

    .line 1220
    nop

    .line 1221
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v2

    if-ge p1, v2, :cond_70

    .line 1226
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v2, p1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->offer(I)V

    .line 1228
    :cond_70
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    if-le p2, v2, :cond_7d

    .line 1229
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v2, p2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1231
    :cond_7d
    iput v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1233
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v2, v3}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1234
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v2}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->peek()I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1241
    :cond_8f
    return-void

    .line 1201
    :cond_90
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mgetLanguageBreakEngine(Landroid/icu/text/RuleBasedBreakIterator;I)Landroid/icu/impl/breakiter/LanguageBreakEngine;

    move-result-object v2

    .line 1205
    .local v2, "lbe":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    if-eqz v2, :cond_ab

    .line 1206
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v3

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfPhraseBreaking(Landroid/icu/text/RuleBasedBreakIterator;)Z

    move-result v7

    invoke-interface/range {v2 .. v7}, Landroid/icu/impl/breakiter/LanguageBreakEngine;->findBreaks(Ljava/text/CharacterIterator;IILandroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;Z)I

    move-result v3

    add-int/2addr v0, v3

    .line 1210
    :cond_ab
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v3}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/CharacterIteration;->current32(Ljava/text/CharacterIterator;)I

    move-result v1

    .line 1211
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v3, v3, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    invoke-virtual {v3, v1}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v3

    int-to-short v9, v3

    .line 1212
    .end local v2    # "lbe":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto/16 :goto_37
.end method

.method greylist-max-o preceding(I)Z
    .registers 7
    .param p1, "fromPos"    # I

    .line 1116
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le p1, v0, :cond_89

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    if-le p1, v0, :cond_c

    goto/16 :goto_89

    .line 1121
    :cond_c
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1f

    .line 1122
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1123
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-ltz v0, :cond_1f

    .line 1124
    nop

    .line 1129
    :cond_1f
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-lez v0, :cond_53

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v4

    if-ge v0, v4, :cond_53

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    if-ne v0, p1, :cond_53

    .line 1130
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1131
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v1}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    .line 1132
    .local v0, "r":I
    nop

    .line 1133
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1134
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ne v0, v1, :cond_4e

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    goto :goto_50

    :cond_4e
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    :goto_50
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    .line 1135
    return v3

    .line 1138
    .end local v0    # "r":I
    :cond_53
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-nez v0, :cond_5a

    .line 1139
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1140
    return v1

    .line 1143
    :cond_5a
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    :goto_63
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    if-ltz v0, :cond_85

    .line 1144
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    invoke-virtual {v0, v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->elementAt(I)I

    move-result v0

    .line 1145
    .restart local v0    # "r":I
    if-ge v0, p1, :cond_7f

    .line 1146
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1147
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    if-ne v0, v1, :cond_7a

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    goto :goto_7c

    :cond_7a
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    :goto_7c
    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    .line 1148
    return v3

    .line 1143
    :cond_7f
    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    sub-int/2addr v4, v3

    iput v4, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    goto :goto_63

    .line 1151
    .end local v0    # "r":I
    :cond_85
    nop

    .line 1152
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1153
    return v1

    .line 1117
    :cond_89
    :goto_89
    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1118
    return v1
.end method

.method greylist-max-o reset()V
    .registers 2

    .line 1068
    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fPositionInCache:I

    .line 1069
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStart:I

    .line 1070
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fLimit:I

    .line 1071
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fFirstRuleStatusIndex:I

    .line 1072
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fOtherRuleStatusIndex:I

    .line 1073
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBreaks:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->removeAllElements()V

    .line 1074
    return-void
.end method
