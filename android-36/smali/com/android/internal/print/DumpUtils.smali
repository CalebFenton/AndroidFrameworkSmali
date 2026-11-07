.class public Lcom/android/internal/print/DumpUtils;
.super Ljava/lang/Object;
.source "DumpUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V
    .registers 11
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "margins"    # Landroid/print/PrintAttributes$Margins;

    .line 191
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 192
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getTopMils()I

    move-result v4

    const-string/jumbo v5, "top_mils"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 193
    const-wide v2, 0x10500000002L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getLeftMils()I

    move-result v4

    const-string v5, "left_mils"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 194
    const-wide v2, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getRightMils()I

    move-result v4

    const-string/jumbo v5, "right_mils"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 195
    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Margins;->getBottomMils()I

    move-result v4

    const-string v5, "bottom_mils"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 196
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 197
    return-void
.end method

.method public static blacklist writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "mediaSize"    # Landroid/print/PrintAttributes$MediaSize;

    .line 155
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 156
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p5, v2}, Landroid/print/PrintAttributes$MediaSize;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "label"

    const-wide v4, 0x10900000002L

    invoke-virtual {p1, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 158
    const-wide v2, 0x10500000003L

    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getHeightMils()I

    move-result v4

    const-string v5, "height_mils"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 159
    const-wide v2, 0x10500000004L

    invoke-virtual {p5}, Landroid/print/PrintAttributes$MediaSize;->getWidthMils()I

    move-result v4

    const-string/jumbo v5, "width_mils"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 160
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 161
    return-void
.end method

.method public static blacklist writePageRange(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PageRange;)V
    .registers 11
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "range"    # Landroid/print/PageRange;

    .line 267
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 268
    .local v0, "token":J
    const-wide v2, 0x10500000001L

    invoke-virtual {p4}, Landroid/print/PageRange;->getStart()I

    move-result v4

    const-string/jumbo v5, "start"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 269
    const-wide v2, 0x10500000002L

    invoke-virtual {p4}, Landroid/print/PageRange;->getEnd()I

    move-result v4

    const-string v5, "end"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 270
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 271
    return-void
.end method

.method public static blacklist writePrintAttributes(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "attributes"    # Landroid/print/PrintAttributes;

    .line 211
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 213
    .local v0, "token":J
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v7

    .line 214
    .local v7, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    if-eqz v7, :cond_25

    .line 215
    const-string v4, "media_size"

    const-wide v5, 0x10b00000001L

    move-object v2, p0

    move-object v3, p1

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "proto":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .local v2, "context":Landroid/content/Context;
    .local v3, "proto":Lcom/android/internal/util/dump/DualDumpOutputStream;
    invoke-static/range {v2 .. v7}, Lcom/android/internal/print/DumpUtils;->writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V

    .line 216
    const-wide p0, 0x10800000002L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->isPortrait()Z

    move-result v4

    const-string v5, "is_portrait"

    invoke-virtual {v3, v5, p0, p1, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    goto :goto_27

    .line 214
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "proto":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "proto":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :cond_25
    move-object v2, p0

    move-object v3, p1

    .line 219
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "proto":Lcom/android/internal/util/dump/DualDumpOutputStream;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "proto":Lcom/android/internal/util/dump/DualDumpOutputStream;
    :goto_27
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object p0

    .line 220
    .local p0, "res":Landroid/print/PrintAttributes$Resolution;
    if-eqz p0, :cond_38

    .line 221
    const-string/jumbo p1, "resolution"

    const-wide v4, 0x10b00000003L

    invoke-static {v3, p1, v4, v5, p0}, Lcom/android/internal/print/DumpUtils;->writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V

    .line 224
    :cond_38
    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object p1

    .line 225
    .local p1, "minMargins":Landroid/print/PrintAttributes$Margins;
    if-eqz p1, :cond_48

    .line 226
    const-string v4, "min_margings"

    const-wide v5, 0x10b00000004L

    invoke-static {v3, v4, v5, v6, p1}, Lcom/android/internal/print/DumpUtils;->writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V

    .line 229
    :cond_48
    const-wide v4, 0x10e00000005L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v6

    const-string v8, "color_mode"

    invoke-virtual {v3, v8, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 230
    const-wide v4, 0x10e00000006L

    invoke-virtual {p5}, Landroid/print/PrintAttributes;->getDuplexMode()I

    move-result v6

    const-string v8, "duplex_mode"

    invoke-virtual {v3, v8, v4, v5, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 231
    invoke-virtual {v3, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 232
    return-void
.end method

.method public static blacklist writePrintDocumentInfo(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintDocumentInfo;)V
    .registers 14
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "info"    # Landroid/print/PrintDocumentInfo;

    .line 244
    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 245
    .local v6, "token":J
    const-wide v1, 0x10900000001L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 247
    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getPageCount()I

    move-result v8

    .line 248
    .local v8, "pageCount":I
    const/4 v1, -0x1

    if-eq v8, v1, :cond_23

    .line 249
    const-string v1, "page_count"

    const-wide v2, 0x10500000002L

    invoke-virtual {p0, v1, v2, v3, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 252
    :cond_23
    const-wide v1, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getContentType()I

    move-result v3

    const-string v4, "content_type"

    invoke-virtual {p0, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 253
    const-wide v2, 0x10300000004L

    invoke-virtual {p4}, Landroid/print/PrintDocumentInfo;->getDataSize()J

    move-result-wide v4

    const-string v1, "data_size"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 254
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 255
    return-void
.end method

.method public static blacklist writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V
    .registers 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "printJobInfo"    # Landroid/print/PrintJobInfo;

    .line 285
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 286
    .local v6, "token":J
    const-wide v1, 0x10900000001L

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "label"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 288
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    .line 289
    .local v8, "printJobId":Landroid/print/PrintJobId;
    if-eqz v8, :cond_2a

    .line 290
    nop

    .line 291
    invoke-virtual {v8}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string/jumbo v2, "print_job_id"

    const-wide v3, 0x10900000002L

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 294
    :cond_2a
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getState()I

    move-result v9

    .line 295
    .local v9, "state":I
    const/4 v10, 0x0

    const-wide v1, 0x10e00000003L

    const-string/jumbo v3, "state"

    const/4 v11, 0x1

    if-lt v9, v11, :cond_41

    const/4 v4, 0x7

    if-gt v9, v4, :cond_41

    .line 296
    invoke-virtual {v0, v3, v1, v2, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    goto :goto_44

    .line 298
    :cond_41
    invoke-virtual {v0, v3, v1, v2, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 301
    :goto_44
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v12

    .line 302
    .local v12, "printer":Landroid/print/PrinterId;
    if-eqz v12, :cond_55

    .line 303
    const-string/jumbo v1, "printer"

    const-wide v2, 0x10b00000004L

    invoke-static {v0, v1, v2, v3, v12}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 306
    :cond_55
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getTag()Ljava/lang/String;

    move-result-object v13

    .line 307
    .local v13, "tag":Ljava/lang/String;
    if-eqz v13, :cond_66

    .line 308
    const-string/jumbo v1, "tag"

    const-wide v2, 0x10900000005L

    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 311
    :cond_66
    nop

    .line 312
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v4

    .line 311
    const-string v1, "creation_time"

    const-wide v2, 0x10300000006L

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 314
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getAttributes()Landroid/print/PrintAttributes;

    move-result-object v5

    .line 315
    .local v5, "attributes":Landroid/print/PrintAttributes;
    if-eqz v5, :cond_8b

    .line 316
    const-string v2, "attributes"

    const-wide v3, 0x10b00000007L

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/print/DumpUtils;->writePrintAttributes(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes;)V

    move-object v0, v1

    goto :goto_8d

    .line 315
    :cond_8b
    move-object/from16 v0, p1

    .line 320
    :goto_8d
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getDocumentInfo()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 321
    .local v1, "docInfo":Landroid/print/PrintDocumentInfo;
    if-eqz v1, :cond_9d

    .line 322
    const-string v2, "document_info"

    const-wide v3, 0x10b00000008L

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/internal/print/DumpUtils;->writePrintDocumentInfo(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintDocumentInfo;)V

    .line 326
    :cond_9d
    const-wide v2, 0x10800000009L

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v4

    const-string v14, "is_canceling"

    invoke-virtual {v0, v14, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 328
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getPages()[Landroid/print/PageRange;

    move-result-object v2

    .line 329
    .local v2, "pages":[Landroid/print/PageRange;
    if-eqz v2, :cond_c5

    .line 330
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b2
    array-length v4, v2

    if-ge v3, v4, :cond_c5

    .line 331
    const-wide v14, 0x20b0000000aL

    aget-object v4, v2, v3

    const-string v10, "pages"

    invoke-static {v0, v10, v14, v15, v4}, Lcom/android/internal/print/DumpUtils;->writePageRange(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PageRange;)V

    .line 330
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x0

    goto :goto_b2

    .line 335
    .end local v3    # "i":I
    :cond_c5
    nop

    .line 336
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getAdvancedOptions()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_ce

    move v10, v11

    goto :goto_cf

    :cond_ce
    const/4 v10, 0x0

    .line 335
    :goto_cf
    const-string v3, "has_advanced_options"

    const-wide v14, 0x1080000000bL

    invoke-virtual {v0, v3, v14, v15, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 337
    const-wide v3, 0x1020000000cL

    invoke-virtual/range {p5 .. p5}, Landroid/print/PrintJobInfo;->getProgress()F

    move-result v10

    const-string/jumbo v11, "progress"

    invoke-virtual {v0, v11, v3, v4, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JF)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-virtual {v4, v3}, Landroid/print/PrintJobInfo;->getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 340
    .local v3, "status":Ljava/lang/CharSequence;
    if-eqz v3, :cond_103

    .line 341
    const-wide v10, 0x1090000000dL

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "status"

    invoke-virtual {v0, v15, v10, v11, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 344
    :cond_103
    invoke-virtual {v0, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 345
    return-void
.end method

.method public static blacklist writePrinterCapabilities(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterCapabilitiesInfo;)V
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "cap"    # Landroid/print/PrinterCapabilitiesInfo;

    .line 76
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 77
    .local v0, "token":J
    nop

    .line 78
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v2

    .line 77
    const-string v3, "min_margins"

    const-wide v4, 0x10b00000001L

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/internal/print/DumpUtils;->writeMargins(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Margins;)V

    .line 80
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getMediaSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "numMediaSizes":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v2, :cond_39

    .line 82
    nop

    .line 83
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getMediaSizes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroid/print/PrintAttributes$MediaSize;

    .line 82
    const-string v7, "media_sizes"

    const-wide v8, 0x20b00000002L

    move-object v5, p0

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Lcom/android/internal/print/DumpUtils;->writeMediaSize(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$MediaSize;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 86
    .end local v3    # "i":I
    :cond_39
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getResolutions()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 87
    .local v3, "numResolutions":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_42
    if-ge v4, v3, :cond_5d

    .line 88
    nop

    .line 89
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getResolutions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintAttributes$Resolution;

    .line 88
    const-string/jumbo v7, "resolutions"

    const-wide v8, 0x20b00000003L

    invoke-static {p1, v7, v8, v9, v5}, Lcom/android/internal/print/DumpUtils;->writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_42

    .line 92
    .end local v4    # "i":I
    :cond_5d
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getColorModes()I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const-wide v7, 0x20e00000004L

    const-string v9, "color_modes"

    if-eqz v4, :cond_6f

    .line 93
    invoke-virtual {p1, v9, v7, v8, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 96
    :cond_6f
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getColorModes()I

    move-result v4

    const/4 v10, 0x2

    and-int/2addr v4, v10

    if-eqz v4, :cond_7a

    .line 97
    invoke-virtual {p1, v9, v7, v8, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 101
    :cond_7a
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result v4

    and-int/2addr v4, v5

    const-wide v7, 0x20e00000005L

    const-string v9, "duplex_modes"

    if-eqz v4, :cond_8b

    .line 102
    invoke-virtual {p1, v9, v7, v8, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 105
    :cond_8b
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result v4

    and-int/2addr v4, v10

    if-eqz v4, :cond_95

    .line 106
    invoke-virtual {p1, v9, v7, v8, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 109
    :cond_95
    invoke-virtual/range {p5 .. p5}, Landroid/print/PrinterCapabilitiesInfo;->getDuplexModes()I

    move-result v4

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_a0

    .line 110
    invoke-virtual {p1, v9, v7, v8, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 114
    :cond_a0
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 115
    return-void
.end method

.method public static blacklist writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V
    .registers 11
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "printerId"    # Landroid/print/PrinterId;

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 59
    .local v0, "token":J
    nop

    .line 60
    invoke-virtual {p4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v2

    .line 59
    const-string/jumbo v3, "service_name"

    const-wide v4, 0x10b00000001L

    invoke-static {p0, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 61
    const-wide v2, 0x10900000002L

    invoke-virtual {p4}, Landroid/print/PrinterId;->getLocalId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "local_id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 62
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 63
    return-void
.end method

.method public static blacklist writePrinterInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterInfo;)V
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p2, "idName"    # Ljava/lang/String;
    .param p3, "id"    # J
    .param p5, "info"    # Landroid/print/PrinterInfo;

    .line 129
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v6

    .line 130
    .local v6, "token":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v0

    const-string v4, "id"

    invoke-static {p1, v4, v2, v3, v0}, Lcom/android/internal/print/DumpUtils;->writePrinterId(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterId;)V

    .line 131
    const-wide v2, 0x10900000002L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "name"

    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 132
    const-wide v2, 0x10e00000003L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getStatus()I

    move-result v0

    const-string/jumbo v4, "status"

    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 133
    const-wide v2, 0x10900000004L

    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v4, "description"

    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 135
    invoke-virtual {p5}, Landroid/print/PrinterInfo;->getCapabilities()Landroid/print/PrinterCapabilitiesInfo;

    move-result-object v5

    .line 136
    .local v5, "cap":Landroid/print/PrinterCapabilitiesInfo;
    if-eqz v5, :cond_4f

    .line 137
    const-string v2, "capabilities"

    const-wide v3, 0x10b00000005L

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/print/DumpUtils;->writePrinterCapabilities(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrinterCapabilitiesInfo;)V

    .line 141
    :cond_4f
    invoke-virtual {p1, v6, v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 142
    return-void
.end method

.method public static blacklist writeResolution(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintAttributes$Resolution;)V
    .registers 11
    .param p0, "proto"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p1, "idName"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "res"    # Landroid/print/PrintAttributes$Resolution;

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 174
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "id"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 175
    const-wide v2, 0x10900000002L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getLabel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 176
    const-wide v2, 0x10500000003L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getHorizontalDpi()I

    move-result v4

    const-string v5, "horizontal_DPI"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 177
    const-wide v2, 0x10500000004L

    invoke-virtual {p4}, Landroid/print/PrintAttributes$Resolution;->getVerticalDpi()I

    move-result v4

    const-string/jumbo v5, "veritical_DPI"

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 179
    return-void
.end method
