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
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;

    #@0
    .prologue
    .line 1057
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ActivityChooserModel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1061
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 18
    .param p1, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1062
    const/4 v14, 0x0

    #@1
    aget-object v5, p1, v14

    #@3
    check-cast v5, Ljava/util/List;

    #@5
    .line 1063
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v14, 0x1

    #@6
    aget-object v6, p1, v14

    #@8
    check-cast v6, Ljava/lang/String;

    #@a
    .line 1065
    .local v6, "hostoryFileName":Ljava/lang/String;
    const/4 v4, 0x0

    #@b
    .line 1068
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    move-object/from16 v0, p0

    #@d
    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@f
    invoke-static {v14}, Landroid/widget/ActivityChooserModel;->-get1(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    #@12
    move-result-object v14

    #@13
    const/4 v15, 0x0

    #@14
    invoke-virtual {v14, v6, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v4

    #@18
    .line 1074
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    #@1b
    move-result-object v13

    #@1c
    .line 1077
    .local v13, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v14, 0x0

    #@1d
    :try_start_1
    invoke-interface {v13, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    #@20
    .line 1078
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    #@22
    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    #@25
    move-result-object v14

    #@26
    const/4 v15, 0x1

    #@27
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2a
    move-result-object v15

    #@2b
    invoke-interface {v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    #@2e
    .line 1079
    const-string/jumbo v14, "historical-records"

    #@31
    const/4 v15, 0x0

    #@32
    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@35
    .line 1081
    invoke-interface {v5}, Ljava/util/List;->size()I

    #@38
    move-result v12

    #@39
    .line 1082
    .local v12, "recordCount":I
    const/4 v7, 0x0

    #@3a
    .local v7, "i":I
    :goto_0
    if-ge v7, v12, :cond_0

    #@3c
    .line 1083
    const/4 v14, 0x0

    #@3d
    invoke-interface {v5, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    #@40
    move-result-object v11

    #@41
    check-cast v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    #@43
    .line 1084
    .local v11, "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    const-string/jumbo v14, "historical-record"

    #@46
    const/4 v15, 0x0

    #@47
    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@4a
    .line 1085
    const-string/jumbo v14, "activity"

    #@4d
    .line 1086
    iget-object v15, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    #@4f
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    #@52
    move-result-object v15

    #@53
    .line 1085
    const/16 v16, 0x0

    #@55
    move-object/from16 v0, v16

    #@57
    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@5a
    .line 1087
    const-string/jumbo v14, "time"

    #@5d
    iget-wide v0, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    #@5f
    move-wide/from16 v16, v0

    #@61
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@64
    move-result-object v15

    #@65
    const/16 v16, 0x0

    #@67
    move-object/from16 v0, v16

    #@69
    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@6c
    .line 1088
    const-string/jumbo v14, "weight"

    #@6f
    iget v15, v11, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    #@71
    invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    #@74
    move-result-object v15

    #@75
    const/16 v16, 0x0

    #@77
    move-object/from16 v0, v16

    #@79
    invoke-interface {v13, v0, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@7c
    .line 1089
    const-string/jumbo v14, "historical-record"

    #@7f
    const/4 v15, 0x0

    #@80
    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@83
    .line 1082
    add-int/lit8 v7, v7, 0x1

    #@85
    goto :goto_0

    #@86
    .line 1069
    .end local v7    # "i":I
    .end local v11    # "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v12    # "recordCount":I
    .end local v13    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    #@87
    .line 1070
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    #@8a
    move-result-object v14

    #@8b
    new-instance v15, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v16, "Error writing historical recrod file: "

    #@93
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v15

    #@97
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v15

    #@9b
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v15

    #@9f
    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a2
    .line 1071
    const/4 v14, 0x0

    #@a3
    return-object v14

    #@a4
    .line 1095
    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    .local v4, "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "i":I
    .restart local v12    # "recordCount":I
    .restart local v13    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :try_start_2
    const-string/jumbo v14, "historical-records"

    #@a7
    const/4 v15, 0x0

    #@a8
    invoke-interface {v13, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    #@ab
    .line 1096
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ae
    .line 1108
    move-object/from16 v0, p0

    #@b0
    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@b2
    const/4 v15, 0x1

    #@b3
    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    #@b6
    .line 1109
    if-eqz v4, :cond_1

    #@b8
    .line 1111
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    #@bb
    .line 1117
    .end local v7    # "i":I
    .end local v12    # "recordCount":I
    :cond_1
    :goto_1
    const/4 v14, 0x0

    #@bc
    return-object v14

    #@bd
    .line 1112
    .restart local v7    # "i":I
    .restart local v12    # "recordCount":I
    :catch_1
    move-exception v2

    #@be
    .local v2, "e":Ljava/io/IOException;
    goto :goto_1

    #@bf
    .line 1105
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v12    # "recordCount":I
    :catch_2
    move-exception v9

    #@c0
    .line 1106
    .local v9, "ioe":Ljava/io/IOException;
    :try_start_4
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    #@c3
    move-result-object v14

    #@c4
    new-instance v15, Ljava/lang/StringBuilder;

    #@c6
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@c9
    const-string/jumbo v16, "Error writing historical recrod file: "

    #@cc
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v15

    #@d0
    move-object/from16 v0, p0

    #@d2
    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@d4
    move-object/from16 v16, v0

    #@d6
    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    #@d9
    move-result-object v16

    #@da
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v15

    #@de
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v15

    #@e2
    invoke-static {v14, v15, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@e5
    .line 1108
    move-object/from16 v0, p0

    #@e7
    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@e9
    const/4 v15, 0x1

    #@ea
    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    #@ed
    .line 1109
    if-eqz v4, :cond_1

    #@ef
    .line 1111
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    #@f2
    goto :goto_1

    #@f3
    .line 1112
    :catch_3
    move-exception v2

    #@f4
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@f5
    .line 1103
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "ioe":Ljava/io/IOException;
    :catch_4
    move-exception v10

    #@f6
    .line 1104
    .local v10, "ise":Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    #@f9
    move-result-object v14

    #@fa
    new-instance v15, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v16, "Error writing historical recrod file: "

    #@102
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v15

    #@106
    move-object/from16 v0, p0

    #@108
    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@10a
    move-object/from16 v16, v0

    #@10c
    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    #@10f
    move-result-object v16

    #@110
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@113
    move-result-object v15

    #@114
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@117
    move-result-object v15

    #@118
    invoke-static {v14, v15, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    #@11b
    .line 1108
    move-object/from16 v0, p0

    #@11d
    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@11f
    const/4 v15, 0x1

    #@120
    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    #@123
    .line 1109
    if-eqz v4, :cond_1

    #@125
    .line 1111
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@128
    goto :goto_1

    #@129
    .line 1112
    :catch_5
    move-exception v2

    #@12a
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    #@12b
    .line 1101
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "ise":Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v8

    #@12c
    .line 1102
    .local v8, "iae":Ljava/lang/IllegalArgumentException;
    :try_start_8
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-get0()Ljava/lang/String;

    #@12f
    move-result-object v14

    #@130
    new-instance v15, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v16, "Error writing historical recrod file: "

    #@138
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v15

    #@13c
    move-object/from16 v0, p0

    #@13e
    iget-object v0, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@140
    move-object/from16 v16, v0

    #@142
    invoke-static/range {v16 .. v16}, Landroid/widget/ActivityChooserModel;->-get2(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    #@145
    move-result-object v16

    #@146
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@149
    move-result-object v15

    #@14a
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14d
    move-result-object v15

    #@14e
    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    #@151
    .line 1108
    move-object/from16 v0, p0

    #@153
    iget-object v14, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@155
    const/4 v15, 0x1

    #@156
    invoke-static {v14, v15}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    #@159
    .line 1109
    if-eqz v4, :cond_1

    #@15b
    .line 1111
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    #@15e
    goto/16 :goto_1

    #@160
    .line 1112
    :catch_7
    move-exception v2

    #@161
    .restart local v2    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    #@163
    .line 1107
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "iae":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v14

    #@164
    .line 1108
    move-object/from16 v0, p0

    #@166
    iget-object v15, v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    #@168
    const/16 v16, 0x1

    #@16a
    invoke-static/range {v15 .. v16}, Landroid/widget/ActivityChooserModel;->-set0(Landroid/widget/ActivityChooserModel;Z)Z

    #@16d
    .line 1109
    if-eqz v4, :cond_2

    #@16f
    .line 1111
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    #@172
    .line 1107
    :cond_2
    :goto_2
    throw v14

    #@173
    .line 1112
    :catch_8
    move-exception v2

    #@174
    .restart local v2    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
