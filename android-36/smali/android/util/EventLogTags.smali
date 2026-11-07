.class public Landroid/util/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/EventLogTags$Description;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/BufferedReader;)V
    .registers 2
    .param p1, "input"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist get(I)Landroid/util/EventLogTags$Description;
    .registers 3
    .param p1, "tag"    # I

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist get(Ljava/lang/String;)Landroid/util/EventLogTags$Description;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method
