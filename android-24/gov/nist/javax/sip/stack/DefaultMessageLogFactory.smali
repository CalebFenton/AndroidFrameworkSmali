.class public Lgov/nist/javax/sip/stack/DefaultMessageLogFactory;
.super Ljava/lang/Object;
.source "DefaultMessageLogFactory.java"

# interfaces
.implements Lgov/nist/javax/sip/LogRecordFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createLogRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lgov/nist/javax/sip/LogRecord;
    .locals 12
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p6, "isSender"    # Z
    .param p7, "firstLine"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "callId"    # Ljava/lang/String;
    .param p10, "timestampVal"    # J

    #@0
    .prologue
    .line 25
    new-instance v0, Lgov/nist/javax/sip/stack/MessageLog;

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-wide/from16 v4, p4

    #@7
    move/from16 v6, p6

    #@9
    move-object/from16 v7, p7

    #@b
    move-object/from16 v8, p8

    #@d
    move-object/from16 v9, p9

    #@f
    move-wide/from16 v10, p10

    #@11
    invoke-direct/range {v0 .. v11}, Lgov/nist/javax/sip/stack/MessageLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    #@14
    return-object v0
.end method

.method public createLogRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lgov/nist/javax/sip/LogRecord;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;
    .param p5, "isSender"    # Z
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "tid"    # Ljava/lang/String;
    .param p8, "callId"    # Ljava/lang/String;
    .param p9, "tsHeaderValue"    # J

    #@0
    .prologue
    .line 18
    new-instance v1, Lgov/nist/javax/sip/stack/MessageLog;

    #@2
    move-object v2, p1

    #@3
    move-object v3, p2

    #@4
    move-object/from16 v4, p3

    #@6
    move-object/from16 v5, p4

    #@8
    move/from16 v6, p5

    #@a
    move-object/from16 v7, p6

    #@c
    move-object/from16 v8, p7

    #@e
    move-object/from16 v9, p8

    #@10
    move-wide/from16 v10, p9

    #@12
    invoke-direct/range {v1 .. v11}, Lgov/nist/javax/sip/stack/MessageLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    #@15
    return-object v1
.end method
