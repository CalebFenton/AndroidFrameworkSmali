.class public final Landroid/content/ContentCaptureOptions;
.super Ljava/lang/Object;
.source "ContentCaptureOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentCaptureOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field public final blacklist contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

.field public final blacklist disableFlushForViewTreeAppearing:Z

.field public final blacklist enableReceiver:Z

.field public final blacklist idleFlushingFrequencyMs:I

.field public final blacklist lite:Z

.field public final blacklist logHistorySize:I

.field public final blacklist loggingLevel:I

.field public final blacklist maxBufferSize:I

.field public final blacklist textChangeFlushingFrequencyMs:I

.field public final blacklist whitelistedComponents:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    const-class v0, Landroid/content/ContentCaptureOptions;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/ContentCaptureOptions;->TAG:Ljava/lang/String;

    .line 331
    new-instance v0, Landroid/content/ContentCaptureOptions$1;

    invoke-direct {v0}, Landroid/content/ContentCaptureOptions$1;-><init>()V

    sput-object v0, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 13
    .param p1, "loggingLevel"    # I

    .line 116
    new-instance v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    .line 116
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v2, p1

    move-object v9, v0

    move-object v0, p0

    .end local p1    # "loggingLevel":I
    .local v2, "loggingLevel":I
    invoke-direct/range {v0 .. v10}, Landroid/content/ContentCaptureOptions;-><init>(ZIIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    .line 132
    return-void
.end method

.method public constructor blacklist <init>(IIIIILandroid/util/ArraySet;)V
    .registers 18
    .param p1, "loggingLevel"    # I
    .param p2, "maxBufferSize"    # I
    .param p3, "idleFlushingFrequencyMs"    # I
    .param p4, "textChangeFlushingFrequencyMs"    # I
    .param p5, "logHistorySize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 143
    .local p6, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v9, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    invoke-direct {v9}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>()V

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Landroid/content/ContentCaptureOptions;-><init>(ZIIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    .line 154
    return-void
.end method

.method public constructor blacklist <init>(IIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V
    .registers 21
    .param p1, "loggingLevel"    # I
    .param p2, "maxBufferSize"    # I
    .param p3, "idleFlushingFrequencyMs"    # I
    .param p4, "textChangeFlushingFrequencyMs"    # I
    .param p5, "logHistorySize"    # I
    .param p6, "disableFlushForViewTreeAppearing"    # Z
    .param p7, "enableReceiver"    # Z
    .param p8, "contentProtectionOptions"    # Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZZ",
            "Landroid/content/ContentCaptureOptions$ContentProtectionOptions;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 168
    .local p9, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/content/ContentCaptureOptions;-><init>(ZIIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    .line 179
    return-void
.end method

.method public constructor blacklist <init>(Landroid/util/ArraySet;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 184
    .local p1, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    new-instance v8, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    invoke-direct {v8}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>()V

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    const/16 v3, 0x1388

    const/16 v4, 0x3e8

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v9, p1

    .end local p1    # "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    .local v9, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-direct/range {v0 .. v9}, Landroid/content/ContentCaptureOptions;-><init>(IIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V

    .line 194
    return-void
.end method

.method private constructor blacklist <init>(ZIIIIIZZLandroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/util/ArraySet;)V
    .registers 11
    .param p1, "lite"    # Z
    .param p2, "loggingLevel"    # I
    .param p3, "maxBufferSize"    # I
    .param p4, "idleFlushingFrequencyMs"    # I
    .param p5, "textChangeFlushingFrequencyMs"    # I
    .param p6, "logHistorySize"    # I
    .param p7, "disableFlushForViewTreeAppearing"    # Z
    .param p8, "enableReceiver"    # Z
    .param p9, "contentProtectionOptions"    # Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIIIIIZZ",
            "Landroid/content/ContentCaptureOptions$ContentProtectionOptions;",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p10, "whitelistedComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-boolean p1, p0, Landroid/content/ContentCaptureOptions;->lite:Z

    .line 209
    iput p2, p0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    .line 210
    iput p3, p0, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    .line 211
    iput p4, p0, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    .line 212
    iput p5, p0, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .line 213
    iput p6, p0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    .line 214
    iput-boolean p7, p0, Landroid/content/ContentCaptureOptions;->disableFlushForViewTreeAppearing:Z

    .line 215
    iput-boolean p8, p0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    .line 216
    iput-object p9, p0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    .line 217
    iput-object p10, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    .line 218
    return-void
.end method

.method public static blacklist forWhitelistingItself()Landroid/content/ContentCaptureOptions;
    .registers 6

    .line 221
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 222
    .local v0, "at":Landroid/app/ActivityThread;
    if-eqz v0, :cond_68

    .line 226
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "android.contentcaptureservice.cts"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 229
    const-string v2, "android.translation.cts"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_3f

    .line 230
    :cond_1f
    sget-object v2, Landroid/content/ContentCaptureOptions;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forWhitelistingItself(): called by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Thou shall not pass!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_3f
    :goto_3f
    new-instance v2, Landroid/content/ContentCaptureOptions;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/content/ContentCaptureOptions;-><init>(Landroid/util/ArraySet;)V

    .line 237
    .local v2, "options":Landroid/content/ContentCaptureOptions;
    sget-object v3, Landroid/content/ContentCaptureOptions;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forWhitelistingItself("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v2

    .line 223
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "options":Landroid/content/ContentCaptureOptions;
    :cond_68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpShort(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 285
    const-string/jumbo v0, "logLvl="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 286
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_15

    .line 287
    const-string v0, ", lite"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    return-void

    .line 290
    :cond_15
    const-string v0, ", bufferSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget v0, p0, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 292
    const-string v0, ", idle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 294
    const-string v0, ", textIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string v0, ", logSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 298
    const-string v0, ", disableFlushForViewTreeAppearing="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->disableFlushForViewTreeAppearing:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 300
    const-string v0, ", enableReceiver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 302
    const-string v0, ", contentProtectionOptions=["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    invoke-static {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->-$$Nest$mdumpShort(Landroid/content/ContentCaptureOptions$ContentProtectionOptions;Ljava/io/PrintWriter;)V

    .line 304
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    if-eqz v0, :cond_6e

    .line 306
    const-string v0, ", whitelisted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 308
    :cond_6e
    return-void
.end method

.method public blacklist isWhitelisted(Landroid/content/Context;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 245
    iget-object v0, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    .line 246
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentCaptureClient()Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;

    move-result-object v0

    .line 247
    .local v0, "client":Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;
    if-nez v0, :cond_27

    .line 249
    sget-object v1, Landroid/content/ContentCaptureOptions;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWhitelisted(): no ContentCaptureClient on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v1, 0x0

    return v1

    .line 252
    :cond_27
    iget-object v1, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    invoke-interface {v0}, Landroid/view/contentcapture/ContentCaptureManager$ContentCaptureClient;->contentCaptureClientGetComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 257
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_20

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentCaptureOptions [loggingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (lite)]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 260
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentCaptureOptions ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "string":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "loggingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    const-string v2, ", maxBufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    .line 264
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 265
    const-string v2, ", idleFlushingFrequencyMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    .line 266
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    const-string v2, ", textChangeFlushingFrequencyMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    .line 268
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 269
    const-string v2, ", logHistorySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    .line 270
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 271
    const-string v2, ", disableFlushForViewTreeAppearing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/ContentCaptureOptions;->disableFlushForViewTreeAppearing:Z

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string v2, ", enableReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    .line 274
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    const-string v2, ", contentProtectionOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    .line 276
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    if-eqz v1, :cond_96

    .line 278
    const-string v1, ", whitelisted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 280
    :cond_96
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 317
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->lite:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 318
    iget v0, p0, Landroid/content/ContentCaptureOptions;->loggingLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->lite:Z

    if-eqz v0, :cond_f

    return-void

    .line 321
    :cond_f
    iget v0, p0, Landroid/content/ContentCaptureOptions;->maxBufferSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Landroid/content/ContentCaptureOptions;->idleFlushingFrequencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Landroid/content/ContentCaptureOptions;->textChangeFlushingFrequencyMs:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Landroid/content/ContentCaptureOptions;->logHistorySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->disableFlushForViewTreeAppearing:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 326
    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions;->enableReceiver:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 327
    iget-object v0, p0, Landroid/content/ContentCaptureOptions;->contentProtectionOptions:Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    invoke-static {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->-$$Nest$mwriteToParcel(Landroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/os/Parcel;)V

    .line 328
    iget-object v0, p0, Landroid/content/ContentCaptureOptions;->whitelistedComponents:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    .line 329
    return-void
.end method
