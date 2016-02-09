.class public final Landroid/view/accessibility/AccessibilityEvent;
.super Landroid/view/accessibility/AccessibilityRecord;
.source "AccessibilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityEvent$1;
    }
.end annotation


# static fields
.field public static final CONTENT_CHANGE_TYPE_CONTENT_DESCRIPTION:I = 0x4

.field public static final CONTENT_CHANGE_TYPE_SUBTREE:I = 0x1

.field public static final CONTENT_CHANGE_TYPE_TEXT:I = 0x2

.field public static final CONTENT_CHANGE_TYPE_UNDEFINED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final INVALID_POSITION:I = -0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final MAX_TEXT_LENGTH:I = 0x1f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPES_ALL_MASK:I = -0x1

.field public static final TYPE_ANNOUNCEMENT:I = 0x4000

.field public static final TYPE_ASSIST_READING_CONTEXT:I = 0x1000000

.field public static final TYPE_GESTURE_DETECTION_END:I = 0x80000

.field public static final TYPE_GESTURE_DETECTION_START:I = 0x40000

.field public static final TYPE_NOTIFICATION_STATE_CHANGED:I = 0x40

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_END:I = 0x400

.field public static final TYPE_TOUCH_EXPLORATION_GESTURE_START:I = 0x200

.field public static final TYPE_TOUCH_INTERACTION_END:I = 0x200000

.field public static final TYPE_TOUCH_INTERACTION_START:I = 0x100000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUSED:I = 0x8000

.field public static final TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED:I = 0x10000

.field public static final TYPE_VIEW_CLICKED:I = 0x1

.field public static final TYPE_VIEW_CONTEXT_CLICKED:I = 0x800000

.field public static final TYPE_VIEW_FOCUSED:I = 0x8

.field public static final TYPE_VIEW_HOVER_ENTER:I = 0x80

.field public static final TYPE_VIEW_HOVER_EXIT:I = 0x100

.field public static final TYPE_VIEW_LONG_CLICKED:I = 0x2

.field public static final TYPE_VIEW_SCROLLED:I = 0x1000

.field public static final TYPE_VIEW_SELECTED:I = 0x4

.field public static final TYPE_VIEW_TEXT_CHANGED:I = 0x10

.field public static final TYPE_VIEW_TEXT_SELECTION_CHANGED:I = 0x2000

.field public static final TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY:I = 0x20000

.field public static final TYPE_WINDOWS_CHANGED:I = 0x400000

.field public static final TYPE_WINDOW_CONTENT_CHANGED:I = 0x800

.field public static final TYPE_WINDOW_STATE_CHANGED:I = 0x20

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAction:I

.field mContentChangeTypes:I

.field private mEventTime:J

.field private mEventType:I

.field mMovementGranularity:I

.field private mPackageName:Ljava/lang/CharSequence;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 750
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@2
    const/16 v1, 0xa

    #@4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@7
    .line 749
    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@9
    .line 1442
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent$1;

    #@b
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent$1;-><init>()V

    #@e
    .line 1441
    sput-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    #@10
    .line 543
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 764
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityRecord;-><init>()V

    #@3
    return-void
.end method

.method public static eventTypeToString(I)Ljava/lang/String;
    .locals 6
    .param p0, "eventType"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1245
    const/4 v3, -0x1

    #@3
    if-ne p0, v3, :cond_0

    #@5
    .line 1246
    const-string/jumbo v3, "TYPES_ALL_MASK"

    #@8
    return-object v3

    #@9
    .line 1248
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    .line 1249
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@f
    .line 1250
    .local v1, "eventTypeCount":I
    :goto_0
    if-eqz p0, :cond_1a

    #@11
    .line 1251
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    #@14
    move-result v3

    #@15
    shl-int v2, v5, v3

    #@17
    .line 1252
    .local v2, "eventTypeFlag":I
    not-int v3, v2

    #@18
    and-int/2addr p0, v3

    #@19
    .line 1253
    sparse-switch v2, :sswitch_data_0

    #@1c
    goto :goto_0

    #@1d
    .line 1255
    :sswitch_0
    if-lez v1, :cond_1

    #@1f
    .line 1256
    const-string/jumbo v3, ", "

    #@22
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 1258
    :cond_1
    const-string/jumbo v3, "TYPE_VIEW_CLICKED"

    #@28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 1259
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 1262
    :sswitch_1
    if-lez v1, :cond_2

    #@30
    .line 1263
    const-string/jumbo v3, ", "

    #@33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    .line 1265
    :cond_2
    const-string/jumbo v3, "TYPE_VIEW_LONG_CLICKED"

    #@39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    .line 1266
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .line 1269
    :sswitch_2
    if-lez v1, :cond_3

    #@41
    .line 1270
    const-string/jumbo v3, ", "

    #@44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 1272
    :cond_3
    const-string/jumbo v3, "TYPE_VIEW_SELECTED"

    #@4a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 1273
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 1276
    :sswitch_3
    if-lez v1, :cond_4

    #@52
    .line 1277
    const-string/jumbo v3, ", "

    #@55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1279
    :cond_4
    const-string/jumbo v3, "TYPE_VIEW_FOCUSED"

    #@5b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    .line 1280
    add-int/lit8 v1, v1, 0x1

    #@60
    goto :goto_0

    #@61
    .line 1283
    :sswitch_4
    if-lez v1, :cond_5

    #@63
    .line 1284
    const-string/jumbo v3, ", "

    #@66
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    .line 1286
    :cond_5
    const-string/jumbo v3, "TYPE_VIEW_TEXT_CHANGED"

    #@6c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    .line 1287
    add-int/lit8 v1, v1, 0x1

    #@71
    goto :goto_0

    #@72
    .line 1290
    :sswitch_5
    if-lez v1, :cond_6

    #@74
    .line 1291
    const-string/jumbo v3, ", "

    #@77
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    .line 1293
    :cond_6
    const-string/jumbo v3, "TYPE_WINDOW_STATE_CHANGED"

    #@7d
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    .line 1294
    add-int/lit8 v1, v1, 0x1

    #@82
    goto :goto_0

    #@83
    .line 1297
    :sswitch_6
    if-lez v1, :cond_7

    #@85
    .line 1298
    const-string/jumbo v3, ", "

    #@88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8b
    .line 1300
    :cond_7
    const-string/jumbo v3, "TYPE_VIEW_HOVER_ENTER"

    #@8e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    .line 1301
    add-int/lit8 v1, v1, 0x1

    #@93
    goto/16 :goto_0

    #@95
    .line 1304
    :sswitch_7
    if-lez v1, :cond_8

    #@97
    .line 1305
    const-string/jumbo v3, ", "

    #@9a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    .line 1307
    :cond_8
    const-string/jumbo v3, "TYPE_VIEW_HOVER_EXIT"

    #@a0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    .line 1308
    add-int/lit8 v1, v1, 0x1

    #@a5
    goto/16 :goto_0

    #@a7
    .line 1311
    :sswitch_8
    if-lez v1, :cond_9

    #@a9
    .line 1312
    const-string/jumbo v3, ", "

    #@ac
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@af
    .line 1314
    :cond_9
    const-string/jumbo v3, "TYPE_NOTIFICATION_STATE_CHANGED"

    #@b2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    .line 1315
    add-int/lit8 v1, v1, 0x1

    #@b7
    goto/16 :goto_0

    #@b9
    .line 1318
    :sswitch_9
    if-lez v1, :cond_a

    #@bb
    .line 1319
    const-string/jumbo v3, ", "

    #@be
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    .line 1321
    :cond_a
    const-string/jumbo v3, "TYPE_TOUCH_EXPLORATION_GESTURE_START"

    #@c4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    .line 1322
    add-int/lit8 v1, v1, 0x1

    #@c9
    goto/16 :goto_0

    #@cb
    .line 1325
    :sswitch_a
    if-lez v1, :cond_b

    #@cd
    .line 1326
    const-string/jumbo v3, ", "

    #@d0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 1328
    :cond_b
    const-string/jumbo v3, "TYPE_TOUCH_EXPLORATION_GESTURE_END"

    #@d6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    .line 1329
    add-int/lit8 v1, v1, 0x1

    #@db
    goto/16 :goto_0

    #@dd
    .line 1332
    :sswitch_b
    if-lez v1, :cond_c

    #@df
    .line 1333
    const-string/jumbo v3, ", "

    #@e2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e5
    .line 1335
    :cond_c
    const-string/jumbo v3, "TYPE_WINDOW_CONTENT_CHANGED"

    #@e8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    .line 1336
    add-int/lit8 v1, v1, 0x1

    #@ed
    goto/16 :goto_0

    #@ef
    .line 1339
    :sswitch_c
    if-lez v1, :cond_d

    #@f1
    .line 1340
    const-string/jumbo v3, ", "

    #@f4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f7
    .line 1342
    :cond_d
    const-string/jumbo v3, "TYPE_VIEW_TEXT_SELECTION_CHANGED"

    #@fa
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    .line 1343
    add-int/lit8 v1, v1, 0x1

    #@ff
    goto/16 :goto_0

    #@101
    .line 1346
    :sswitch_d
    if-lez v1, :cond_e

    #@103
    .line 1347
    const-string/jumbo v3, ", "

    #@106
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    .line 1349
    :cond_e
    const-string/jumbo v3, "TYPE_VIEW_SCROLLED"

    #@10c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10f
    .line 1350
    add-int/lit8 v1, v1, 0x1

    #@111
    goto/16 :goto_0

    #@113
    .line 1353
    :sswitch_e
    if-lez v1, :cond_f

    #@115
    .line 1354
    const-string/jumbo v3, ", "

    #@118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    .line 1356
    :cond_f
    const-string/jumbo v3, "TYPE_ANNOUNCEMENT"

    #@11e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@121
    .line 1357
    add-int/lit8 v1, v1, 0x1

    #@123
    goto/16 :goto_0

    #@125
    .line 1360
    :sswitch_f
    if-lez v1, :cond_10

    #@127
    .line 1361
    const-string/jumbo v3, ", "

    #@12a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    .line 1363
    :cond_10
    const-string/jumbo v3, "TYPE_VIEW_ACCESSIBILITY_FOCUSED"

    #@130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    .line 1364
    add-int/lit8 v1, v1, 0x1

    #@135
    goto/16 :goto_0

    #@137
    .line 1367
    :sswitch_10
    if-lez v1, :cond_11

    #@139
    .line 1368
    const-string/jumbo v3, ", "

    #@13c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13f
    .line 1370
    :cond_11
    const-string/jumbo v3, "TYPE_VIEW_ACCESSIBILITY_FOCUS_CLEARED"

    #@142
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@145
    .line 1371
    add-int/lit8 v1, v1, 0x1

    #@147
    goto/16 :goto_0

    #@149
    .line 1374
    :sswitch_11
    if-lez v1, :cond_12

    #@14b
    .line 1375
    const-string/jumbo v3, ", "

    #@14e
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    .line 1377
    :cond_12
    const-string/jumbo v3, "TYPE_VIEW_TEXT_TRAVERSED_AT_MOVEMENT_GRANULARITY"

    #@154
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    .line 1378
    add-int/lit8 v1, v1, 0x1

    #@159
    goto/16 :goto_0

    #@15b
    .line 1381
    :sswitch_12
    if-lez v1, :cond_13

    #@15d
    .line 1382
    const-string/jumbo v3, ", "

    #@160
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    .line 1384
    :cond_13
    const-string/jumbo v3, "TYPE_GESTURE_DETECTION_START"

    #@166
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    .line 1385
    add-int/lit8 v1, v1, 0x1

    #@16b
    goto/16 :goto_0

    #@16d
    .line 1388
    :sswitch_13
    if-lez v1, :cond_14

    #@16f
    .line 1389
    const-string/jumbo v3, ", "

    #@172
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    .line 1391
    :cond_14
    const-string/jumbo v3, "TYPE_GESTURE_DETECTION_END"

    #@178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17b
    .line 1392
    add-int/lit8 v1, v1, 0x1

    #@17d
    goto/16 :goto_0

    #@17f
    .line 1395
    :sswitch_14
    if-lez v1, :cond_15

    #@181
    .line 1396
    const-string/jumbo v3, ", "

    #@184
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    .line 1398
    :cond_15
    const-string/jumbo v3, "TYPE_TOUCH_INTERACTION_START"

    #@18a
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    .line 1399
    add-int/lit8 v1, v1, 0x1

    #@18f
    goto/16 :goto_0

    #@191
    .line 1402
    :sswitch_15
    if-lez v1, :cond_16

    #@193
    .line 1403
    const-string/jumbo v3, ", "

    #@196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@199
    .line 1405
    :cond_16
    const-string/jumbo v3, "TYPE_TOUCH_INTERACTION_END"

    #@19c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19f
    .line 1406
    add-int/lit8 v1, v1, 0x1

    #@1a1
    goto/16 :goto_0

    #@1a3
    .line 1409
    :sswitch_16
    if-lez v1, :cond_17

    #@1a5
    .line 1410
    const-string/jumbo v3, ", "

    #@1a8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ab
    .line 1412
    :cond_17
    const-string/jumbo v3, "TYPE_WINDOWS_CHANGED"

    #@1ae
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    .line 1413
    add-int/lit8 v1, v1, 0x1

    #@1b3
    goto/16 :goto_0

    #@1b5
    .line 1416
    :sswitch_17
    if-lez v1, :cond_18

    #@1b7
    .line 1417
    const-string/jumbo v3, ", "

    #@1ba
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    .line 1419
    :cond_18
    const-string/jumbo v3, "TYPE_VIEW_CONTEXT_CLICKED"

    #@1c0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    .line 1420
    add-int/lit8 v1, v1, 0x1

    #@1c5
    goto/16 :goto_0

    #@1c7
    .line 1423
    :sswitch_18
    if-lez v1, :cond_19

    #@1c9
    .line 1424
    const-string/jumbo v3, ", "

    #@1cc
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cf
    .line 1426
    :cond_19
    const-string/jumbo v3, "TYPE_ASSIST_READING_CONTEXT"

    #@1d2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d5
    .line 1427
    add-int/lit8 v1, v1, 0x1

    #@1d7
    goto/16 :goto_0

    #@1d9
    .line 1431
    .end local v2    # "eventTypeFlag":I
    :cond_1a
    if-le v1, v5, :cond_1b

    #@1db
    .line 1432
    const/16 v3, 0x5b

    #@1dd
    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    #@1e0
    .line 1433
    const/16 v3, 0x5d

    #@1e2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e5
    .line 1435
    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e8
    move-result-object v3

    #@1e9
    return-object v3

    #@1ea
    .line 1253
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_8
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_d
        0x2000 -> :sswitch_c
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
        0x20000 -> :sswitch_11
        0x40000 -> :sswitch_12
        0x80000 -> :sswitch_13
        0x100000 -> :sswitch_14
        0x200000 -> :sswitch_15
        0x400000 -> :sswitch_16
        0x800000 -> :sswitch_17
        0x1000000 -> :sswitch_18
    .end sparse-switch
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityEvent;
    .locals 2

    #@0
    .prologue
    .line 1029
    sget-object v1, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@2
    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    #@8
    .line 1030
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    if-eqz v0, :cond_0

    #@a
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return-object v0

    #@b
    .restart local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    new-instance v0, Landroid/view/accessibility/AccessibilityEvent;

    #@d
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityEvent;-><init>()V

    #@10
    goto :goto_0
.end method

.method public static obtain(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 1
    .param p0, "eventType"    # I

    #@0
    .prologue
    .line 992
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object v0

    #@4
    .line 993
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    #@7
    .line 994
    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityEvent;)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6
    .param p0, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 1006
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    #@3
    move-result-object v0

    #@4
    .line 1007
    .local v0, "eventClone":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->init(Landroid/view/accessibility/AccessibilityEvent;)V

    #@7
    .line 1009
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@9
    if-eqz v5, :cond_0

    #@b
    .line 1010
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    #@10
    move-result v4

    #@11
    .line 1011
    .local v4, "recordCount":I
    new-instance v5, Ljava/util/ArrayList;

    #@13
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    #@16
    iput-object v5, v0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@18
    .line 1012
    const/4 v1, 0x0

    #@19
    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    #@1b
    .line 1013
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@1d
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/view/accessibility/AccessibilityRecord;

    #@23
    .line 1014
    .local v2, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    #@26
    move-result-object v3

    #@27
    .line 1015
    .local v3, "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    iget-object v5, v0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@29
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2c
    .line 1012
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 1019
    .end local v1    # "i":I
    .end local v2    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v3    # "recordClone":Landroid/view/accessibility/AccessibilityRecord;
    .end local v4    # "recordCount":I
    :cond_0
    return-object v0
.end method

.method private readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V
    .locals 3
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v0

    #@6
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@8
    .line 1107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v0

    #@c
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@e
    .line 1108
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v0

    #@12
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@14
    .line 1109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@17
    move-result v0

    #@18
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@1a
    .line 1110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@1d
    move-result v0

    #@1e
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@20
    .line 1111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@23
    move-result v0

    #@24
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@26
    .line 1112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@29
    move-result v0

    #@2a
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@2c
    .line 1113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@2f
    move-result v0

    #@30
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@32
    .line 1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v0

    #@36
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@38
    .line 1115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@3b
    move-result v0

    #@3c
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@3e
    .line 1116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@41
    move-result v0

    #@42
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@44
    .line 1117
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@46
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Ljava/lang/CharSequence;

    #@4c
    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@4e
    .line 1118
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@50
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@53
    move-result-object v0

    #@54
    check-cast v0, Ljava/lang/CharSequence;

    #@56
    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@58
    .line 1119
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@5a
    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@5d
    move-result-object v0

    #@5e
    check-cast v0, Ljava/lang/CharSequence;

    #@60
    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@62
    .line 1120
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@65
    move-result-object v0

    #@66
    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@68
    .line 1121
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@6a
    invoke-virtual {p2, v0, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    #@6d
    .line 1122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@70
    move-result v0

    #@71
    iput v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@73
    .line 1123
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@76
    move-result-object v0

    #@77
    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    #@79
    iput-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@7b
    .line 1124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    #@7e
    move-result v0

    #@7f
    if-ne v0, v1, :cond_0

    #@81
    move v0, v1

    #@82
    :goto_0
    iput-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@84
    .line 1105
    return-void

    #@85
    .line 1124
    :cond_0
    const/4 v0, 0x0

    #@86
    goto :goto_0
.end method

.method private writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p2, "parcel"    # Landroid/os/Parcel;
    .param p3, "flags"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1158
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mBooleanProperties:I

    #@3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@6
    .line 1159
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mCurrentItemIndex:I

    #@8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1160
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mItemCount:I

    #@d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1161
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mFromIndex:I

    #@12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1162
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mToIndex:I

    #@17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1163
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollX:I

    #@1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1164
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mScrollY:I

    #@21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 1165
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollX:I

    #@26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@29
    .line 1166
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mMaxScrollY:I

    #@2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1167
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mAddedCount:I

    #@30
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@33
    .line 1168
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mRemovedCount:I

    #@35
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1169
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mClassName:Ljava/lang/CharSequence;

    #@3a
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@3d
    .line 1170
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mContentDescription:Ljava/lang/CharSequence;

    #@3f
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@42
    .line 1171
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mBeforeText:Ljava/lang/CharSequence;

    #@44
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@47
    .line 1172
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mParcelableData:Landroid/os/Parcelable;

    #@49
    invoke-virtual {p2, v1, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@4c
    .line 1173
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mText:Ljava/util/List;

    #@4e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    #@51
    .line 1174
    iget v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceWindowId:I

    #@53
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@56
    .line 1177
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@58
    if-eqz v1, :cond_0

    #@5a
    .line 1178
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5c
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    #@5f
    move-result-object v0

    #@60
    .line 1177
    :cond_0
    invoke-virtual {p2, v0, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@63
    .line 1179
    iget-boolean v0, p1, Landroid/view/accessibility/AccessibilityRecord;->mSealed:Z

    #@65
    if-eqz v0, :cond_1

    #@67
    const/4 v0, 0x1

    #@68
    :goto_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@6b
    .line 1157
    return-void

    #@6c
    .line 1179
    :cond_1
    const/4 v0, 0x0

    #@6d
    goto :goto_0
.end method


# virtual methods
.method public appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V
    .locals 1
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    #@0
    .prologue
    .line 819
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 820
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 821
    new-instance v0, Ljava/util/ArrayList;

    #@9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@c
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@e
    .line 823
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13
    .line 818
    return-void
.end method

.method protected clear()V
    .locals 5

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 1054
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->clear()V

    #@5
    .line 1055
    iput v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@7
    .line 1056
    iput v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@9
    .line 1057
    iput v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@b
    .line 1058
    iput v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@d
    .line 1059
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@f
    .line 1060
    const-wide/16 v2, 0x0

    #@11
    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@13
    .line 1061
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 1062
    :goto_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    #@1c
    move-result v1

    #@1d
    if-nez v1, :cond_0

    #@1f
    .line 1063
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@21
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    #@27
    .line 1064
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    #@2a
    goto :goto_0

    #@2b
    .line 1053
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1186
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAction()I
    .locals 1

    #@0
    .prologue
    .line 981
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@2
    return v0
.end method

.method public getContentChangeTypes()I
    .locals 1

    #@0
    .prologue
    .line 862
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@2
    return v0
.end method

.method public getEventTime()J
    .locals 2

    #@0
    .prologue
    .line 896
    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@2
    return-wide v0
.end method

.method public getEventType()I
    .locals 1

    #@0
    .prologue
    .line 845
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@2
    return v0
.end method

.method public getMovementGranularity()I
    .locals 1

    #@0
    .prologue
    .line 950
    iget v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@2
    return v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 917
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getRecord(I)Landroid/view/accessibility/AccessibilityRecord;
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 833
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 834
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Invalid index "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    const-string/jumbo v2, ", size is 0"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 836
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@27
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    #@2d
    return-object v0
.end method

.method public getRecordCount()I
    .locals 1

    #@0
    .prologue
    .line 808
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method init(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    #@0
    .prologue
    .line 773
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->init(Landroid/view/accessibility/AccessibilityRecord;)V

    #@3
    .line 774
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@5
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@7
    .line 775
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@9
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@b
    .line 776
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@d
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@f
    .line 777
    iget v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@11
    iput v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@13
    .line 778
    iget-wide v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@15
    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@17
    .line 779
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@19
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@1b
    .line 772
    return-void
.end method

.method public initFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1075
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@5
    move-result v5

    #@6
    if-ne v5, v3, :cond_0

    #@8
    :goto_0
    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mSealed:Z

    #@a
    .line 1076
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@d
    move-result v3

    #@e
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@10
    .line 1077
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@13
    move-result v3

    #@14
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@16
    .line 1078
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@19
    move-result v3

    #@1a
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@1c
    .line 1079
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1f
    move-result v3

    #@20
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@22
    .line 1080
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    #@24
    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@27
    move-result-object v3

    #@28
    check-cast v3, Ljava/lang/CharSequence;

    #@2a
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@2c
    .line 1081
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@2f
    move-result-wide v4

    #@30
    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@32
    .line 1082
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@35
    move-result v3

    #@36
    iput v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    #@38
    .line 1083
    invoke-direct {p0, p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    #@3b
    .line 1086
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3e
    move-result v2

    #@3f
    .line 1087
    .local v2, "recordCount":I
    if-lez v2, :cond_1

    #@41
    .line 1088
    new-instance v3, Ljava/util/ArrayList;

    #@43
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@46
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@48
    .line 1089
    const/4 v0, 0x0

    #@49
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@4b
    .line 1090
    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    #@4e
    move-result-object v1

    #@4f
    .line 1091
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->readAccessibilityRecordFromParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;)V

    #@52
    .line 1092
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    #@54
    iput v3, v1, Landroid/view/accessibility/AccessibilityRecord;->mConnectionId:I

    #@56
    .line 1093
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@58
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@5b
    .line 1089
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_1

    #@5e
    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_0
    move v3, v4

    #@5f
    .line 1075
    goto :goto_0

    #@60
    .line 1074
    .restart local v2    # "recordCount":I
    :cond_1
    return-void
.end method

.method public recycle()V
    .locals 1

    #@0
    .prologue
    .line 1043
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->clear()V

    #@3
    .line 1044
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->sPool:Landroid/util/Pools$SynchronizedPool;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    #@8
    .line 1042
    return-void
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    #@0
    .prologue
    .line 971
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 972
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@5
    .line 970
    return-void
.end method

.method public setContentChangeTypes(I)V
    .locals 0
    .param p1, "changeTypes"    # I

    #@0
    .prologue
    .line 874
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 875
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@5
    .line 873
    return-void
.end method

.method public setEventTime(J)V
    .locals 1
    .param p1, "eventTime"    # J

    #@0
    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 908
    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@5
    .line 906
    return-void
.end method

.method public setEventType(I)V
    .locals 0
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 886
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 887
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@5
    .line 885
    return-void
.end method

.method public setMovementGranularity(I)V
    .locals 0
    .param p1, "granularity"    # I

    #@0
    .prologue
    .line 940
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 941
    iput p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@5
    .line 939
    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 928
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->enforceNotSealed()V

    #@3
    .line 929
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@5
    .line 927
    return-void
.end method

.method public setSealed(Z)V
    .locals 4
    .param p1, "sealed"    # Z

    #@0
    .prologue
    .line 791
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    #@3
    .line 792
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@5
    .line 793
    .local v3, "records":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityRecord;>;"
    if-eqz v3, :cond_0

    #@7
    .line 794
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@a
    move-result v2

    #@b
    .line 795
    .local v2, "recordCount":I
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    #@e
    .line 796
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    #@14
    .line 797
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSealed(Z)V

    #@17
    .line 795
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 790
    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1192
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "EventType: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@e
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->eventTypeToString(I)Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 1193
    const-string/jumbo v1, "; EventTime: "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@1e
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@21
    .line 1194
    const-string/jumbo v1, "; PackageName: "

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@2d
    .line 1195
    const-string/jumbo v1, "; MovementGranularity: "

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    .line 1196
    const-string/jumbo v1, "; Action: "

    #@3c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    iget v2, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    .line 1197
    invoke-super {p0}, Landroid/view/accessibility/AccessibilityRecord;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    .line 1232
    const-string/jumbo v1, "; recordCount: "

    #@4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v1

    #@53
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    #@56
    move-result v2

    #@57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    .line 1234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1131
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->isSealed()Z

    #@4
    move-result v3

    #@5
    if-eqz v3, :cond_0

    #@7
    const/4 v3, 0x1

    #@8
    :goto_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b
    .line 1132
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventType:I

    #@d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10
    .line 1133
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mMovementGranularity:I

    #@12
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@15
    .line 1134
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mAction:I

    #@17
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1a
    .line 1135
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mContentChangeTypes:I

    #@1c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@1f
    .line 1136
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mPackageName:Ljava/lang/CharSequence;

    #@21
    invoke-static {v3, p1, v4}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@24
    .line 1137
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityEvent;->mEventTime:J

    #@26
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    #@29
    .line 1138
    iget v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mConnectionId:I

    #@2b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2e
    .line 1139
    invoke-direct {p0, p0, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    #@31
    .line 1142
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getRecordCount()I

    #@34
    move-result v2

    #@35
    .line 1143
    .local v2, "recordCount":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    #@38
    .line 1144
    const/4 v0, 0x0

    #@39
    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    #@3b
    .line 1145
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityEvent;->mRecords:Ljava/util/ArrayList;

    #@3d
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@40
    move-result-object v1

    #@41
    check-cast v1, Landroid/view/accessibility/AccessibilityRecord;

    #@43
    .line 1146
    .local v1, "record":Landroid/view/accessibility/AccessibilityRecord;
    invoke-direct {p0, v1, p1, p2}, Landroid/view/accessibility/AccessibilityEvent;->writeAccessibilityRecordToParcel(Landroid/view/accessibility/AccessibilityRecord;Landroid/os/Parcel;I)V

    #@46
    .line 1144
    add-int/lit8 v0, v0, 0x1

    #@48
    goto :goto_1

    #@49
    .end local v0    # "i":I
    .end local v1    # "record":Landroid/view/accessibility/AccessibilityRecord;
    .end local v2    # "recordCount":I
    :cond_0
    move v3, v4

    #@4a
    .line 1131
    goto :goto_0

    #@4b
    .line 1130
    .restart local v0    # "i":I
    .restart local v2    # "recordCount":I
    :cond_1
    return-void
.end method
