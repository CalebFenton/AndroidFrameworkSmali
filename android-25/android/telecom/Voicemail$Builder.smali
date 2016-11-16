.class public Landroid/telecom/Voicemail$Builder;
.super Ljava/lang/Object;
.source "Voicemail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Voicemail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBuilderDuration:Ljava/lang/Long;

.field private mBuilderHasContent:Z

.field private mBuilderId:Ljava/lang/Long;

.field private mBuilderIsRead:Ljava/lang/Boolean;

.field private mBuilderNumber:Ljava/lang/String;

.field private mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mBuilderSourceData:Ljava/lang/String;

.field private mBuilderSourcePackage:Ljava/lang/String;

.field private mBuilderTimestamp:Ljava/lang/Long;

.field private mBuilderTranscription:Ljava/lang/String;

.field private mBuilderUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/Voicemail$Builder;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/telecom/Voicemail$Builder;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public build()Landroid/telecom/Voicemail;
    .locals 13

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    const/4 v12, 0x0

    #@3
    .line 155
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    #@5
    if-nez v0, :cond_0

    #@7
    const-wide/16 v0, -0x1

    #@9
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    #@f
    .line 156
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    #@11
    if-nez v0, :cond_1

    #@13
    move-wide v0, v2

    #@14
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@17
    move-result-object v0

    #@18
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    #@1a
    .line 157
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    #@1c
    if-nez v0, :cond_2

    #@1e
    :goto_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    #@24
    .line 158
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    #@26
    if-nez v0, :cond_3

    #@28
    const/4 v0, 0x0

    #@29
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@2c
    move-result-object v0

    #@2d
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    #@2f
    .line 159
    new-instance v0, Landroid/telecom/Voicemail;

    #@31
    iget-object v1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    #@33
    iget-object v2, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    #@35
    iget-object v3, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@37
    .line 160
    iget-object v4, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    #@39
    iget-object v5, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    #@3b
    iget-object v6, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    #@3d
    iget-object v7, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    #@3f
    .line 161
    iget-object v8, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    #@41
    iget-object v9, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    #@43
    iget-boolean v10, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    #@45
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@48
    move-result-object v10

    #@49
    iget-object v11, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    #@4b
    .line 159
    invoke-direct/range {v0 .. v12}, Landroid/telecom/Voicemail;-><init>(Ljava/lang/Long;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Landroid/telecom/Voicemail;)V

    #@4e
    return-object v0

    #@4f
    .line 155
    :cond_0
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    #@51
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@54
    move-result-wide v0

    #@55
    goto :goto_0

    #@56
    .line 156
    :cond_1
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    #@58
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@5b
    move-result-wide v0

    #@5c
    goto :goto_1

    #@5d
    .line 157
    :cond_2
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    #@5f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@62
    move-result-wide v2

    #@63
    goto :goto_2

    #@64
    .line 158
    :cond_3
    iget-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    #@66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@69
    move-result v0

    #@6a
    goto :goto_3
.end method

.method public setDuration(J)Landroid/telecom/Voicemail$Builder;
    .locals 1
    .param p1, "duration"    # J

    #@0
    .prologue
    .line 120
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderDuration:Ljava/lang/Long;

    #@6
    .line 121
    return-object p0
.end method

.method public setHasContent(Z)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "hasContent"    # Z

    #@0
    .prologue
    .line 145
    iput-boolean p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderHasContent:Z

    #@2
    .line 146
    return-object p0
.end method

.method public setId(J)Landroid/telecom/Voicemail$Builder;
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 115
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderId:Ljava/lang/Long;

    #@6
    .line 116
    return-object p0
.end method

.method public setIsRead(Z)Landroid/telecom/Voicemail$Builder;
    .locals 1
    .param p1, "isRead"    # Z

    #@0
    .prologue
    .line 140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderIsRead:Ljava/lang/Boolean;

    #@6
    .line 141
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "number"    # Ljava/lang/String;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderNumber:Ljava/lang/String;

    #@2
    .line 101
    return-object p0
.end method

.method public setPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    #@0
    .prologue
    .line 110
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    #@2
    .line 111
    return-object p0
.end method

.method public setSourceData(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "sourceData"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourceData:Ljava/lang/String;

    #@2
    .line 131
    return-object p0
.end method

.method public setSourcePackage(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "sourcePackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 125
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderSourcePackage:Ljava/lang/String;

    #@2
    .line 126
    return-object p0
.end method

.method public setTimestamp(J)Landroid/telecom/Voicemail$Builder;
    .locals 1
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTimestamp:Ljava/lang/Long;

    #@6
    .line 106
    return-object p0
.end method

.method public setTranscription(Ljava/lang/String;)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "transcription"    # Ljava/lang/String;

    #@0
    .prologue
    .line 150
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderTranscription:Ljava/lang/String;

    #@2
    .line 151
    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Landroid/telecom/Voicemail$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Landroid/telecom/Voicemail$Builder;->mBuilderUri:Landroid/net/Uri;

    #@2
    .line 136
    return-object p0
.end method
