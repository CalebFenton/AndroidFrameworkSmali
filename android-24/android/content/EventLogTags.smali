.class public Landroid/content/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BINDER_SAMPLE:I = 0xcb24

.field public static final CONTENT_QUERY_SAMPLE:I = 0xcb22

.field public static final CONTENT_UPDATE_SAMPLE:I = 0xcb23


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static writeBinderSample(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3
    .param p0, "descriptor"    # Ljava/lang/String;
    .param p1, "methodNum"    # I
    .param p2, "time"    # I
    .param p3, "blockingPackage"    # Ljava/lang/String;
    .param p4, "samplePercent"    # I

    #@0
    .prologue
    .line 31
    const/4 v0, 0x5

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    const/4 v1, 0x3

    #@15
    aput-object p3, v0, v1

    #@17
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x4

    #@1c
    aput-object v1, v0, v2

    #@1e
    const v1, 0xcb24

    #@21
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@24
    .line 30
    return-void
.end method

.method public static writeContentQuerySample(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "sortorder"    # Ljava/lang/String;
    .param p4, "time"    # I
    .param p5, "blockingPackage"    # Ljava/lang/String;
    .param p6, "samplePercent"    # I

    #@0
    .prologue
    .line 23
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p1, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p2, v0, v1

    #@c
    const/4 v1, 0x3

    #@d
    aput-object p3, v0, v1

    #@f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12
    move-result-object v1

    #@13
    const/4 v2, 0x4

    #@14
    aput-object v1, v0, v2

    #@16
    const/4 v1, 0x5

    #@17
    aput-object p5, v0, v1

    #@19
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1c
    move-result-object v1

    #@1d
    const/4 v2, 0x6

    #@1e
    aput-object v1, v0, v2

    #@20
    const v1, 0xcb22

    #@23
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@26
    .line 22
    return-void
.end method

.method public static writeContentUpdateSample(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0, "uri"    # Ljava/lang/String;
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "time"    # I
    .param p4, "blockingPackage"    # Ljava/lang/String;
    .param p5, "samplePercent"    # I

    #@0
    .prologue
    .line 27
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    const/4 v1, 0x1

    #@7
    aput-object p1, v0, v1

    #@9
    const/4 v1, 0x2

    #@a
    aput-object p2, v0, v1

    #@c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f
    move-result-object v1

    #@10
    const/4 v2, 0x3

    #@11
    aput-object v1, v0, v2

    #@13
    const/4 v1, 0x4

    #@14
    aput-object p4, v0, v1

    #@16
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v1

    #@1a
    const/4 v2, 0x5

    #@1b
    aput-object v1, v0, v2

    #@1d
    const v1, 0xcb23

    #@20
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@23
    .line 26
    return-void
.end method
