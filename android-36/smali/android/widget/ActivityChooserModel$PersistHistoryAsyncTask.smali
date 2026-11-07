.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1066
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1066
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 19
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1071
    move-object/from16 v1, p0

    const-string v0, "historical-record"

    const-string v2, "historical-records"

    const-string v3, "Error writing historical recrod file: "

    const/4 v4, 0x0

    aget-object v5, p1, v4

    check-cast v5, Ljava/util/List;

    .line 1072
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v6, 0x1

    aget-object v7, p1, v6

    check-cast v7, Ljava/lang/String;

    .line 1074
    .local v7, "hostoryFileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1077
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_14
    iget-object v10, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v10}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmContext(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1e} :catch_12e

    .line 1081
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v10, "fos":Ljava/io/FileOutputStream;
    nop

    .line 1083
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v8

    .line 1086
    .local v8, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_23
    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1087
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v8, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1088
    invoke-interface {v8, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .line 1091
    .local v11, "recordCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3b
    if-ge v12, v11, :cond_75

    .line 1092
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1093
    .local v13, "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v8, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const-string v14, "activity"

    iget-object v15, v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1095
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 1094
    invoke-interface {v8, v9, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    const-string/jumbo v14, "time"
    :try_end_54
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_54} :catch_ef
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_54} :catch_c2
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_54} :catch_95
    .catchall {:try_start_23 .. :try_end_54} :catchall_8f

    move-object/from16 v16, v5

    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v16, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :try_start_56
    iget-wide v4, v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v9, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    const-string/jumbo v4, "weight"

    iget v5, v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v8, v9, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    invoke-interface {v8, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    nop

    .end local v13    # "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_3b

    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_75
    move-object/from16 v16, v5

    .line 1104
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v12    # "i":I
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v8, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_7d} :catch_8d
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_7d} :catch_8b
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_7d} :catch_89
    .catchall {:try_start_56 .. :try_end_7d} :catchall_11f

    .line 1117
    .end local v11    # "recordCount":I
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v10, :cond_11e

    .line 1120
    :try_start_84
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_11c

    goto/16 :goto_11b

    .line 1114
    :catch_89
    move-exception v0

    goto :goto_98

    .line 1112
    :catch_8b
    move-exception v0

    goto :goto_c5

    .line 1110
    :catch_8d
    move-exception v0

    goto :goto_f2

    .line 1117
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_8f
    move-exception v0

    move-object/from16 v16, v5

    move-object v2, v0

    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    goto/16 :goto_121

    .line 1114
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_95
    move-exception v0

    move-object/from16 v16, v5

    .line 1115
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_98
    :try_start_98
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b6
    .catchall {:try_start_98 .. :try_end_b6} :catchall_11f

    .line 1117
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v10, :cond_11e

    .line 1120
    :try_start_be
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_11c

    goto :goto_11b

    .line 1112
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_c2
    move-exception v0

    move-object/from16 v16, v5

    .line 1113
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "ise":Ljava/lang/IllegalStateException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_c5
    :try_start_c5
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e3
    .catchall {:try_start_c5 .. :try_end_e3} :catchall_11f

    .line 1117
    nop

    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v10, :cond_11e

    .line 1120
    :try_start_eb
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_11c

    goto :goto_11b

    .line 1110
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_ef
    move-exception v0

    move-object/from16 v16, v5

    .line 1111
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_f2
    :try_start_f2
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_110
    .catchall {:try_start_f2 .. :try_end_110} :catchall_11f

    .line 1117
    nop

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v10, :cond_11e

    .line 1120
    :try_start_118
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_11c

    .line 1123
    :goto_11b
    goto :goto_11e

    .line 1121
    :catch_11c
    move-exception v0

    goto :goto_11b

    .line 1126
    :cond_11e
    :goto_11e
    return-object v9

    .line 1117
    :catchall_11f
    move-exception v0

    move-object v2, v0

    :goto_121
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v10, :cond_12d

    .line 1120
    :try_start_128
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12c

    .line 1123
    goto :goto_12d

    .line 1121
    :catch_12c
    move-exception v0

    .line 1125
    :cond_12d
    :goto_12d
    throw v2

    .line 1078
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v8, "fos":Ljava/io/FileOutputStream;
    :catch_12e
    move-exception v0

    move-object/from16 v16, v5

    .line 1079
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    return-object v9
.end method
