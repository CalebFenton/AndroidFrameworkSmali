.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Landroid/os/Bundle;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 3
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Landroid/os/Bundle;
    .param p10, "_userId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 77
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    #@6
    .line 78
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@8
    .line 79
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@a
    .line 80
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@c
    .line 81
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@e
    .line 82
    if-eqz p6, :cond_5

    #@10
    array-length v1, p6

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    aget-object v1, p6, v1

    #@15
    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@17
    .line 83
    if-eqz p7, :cond_0

    #@19
    array-length v1, p7

    #@1a
    add-int/lit8 v1, v1, -0x1

    #@1c
    aget-object v2, p7, v1

    #@1e
    :cond_0
    iput-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@20
    .line 84
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    #@22
    .line 85
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    #@24
    .line 86
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@26
    .line 87
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    #@28
    .line 88
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@2a
    .line 91
    add-int/lit16 v0, p8, 0x353

    #@2c
    .line 92
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    #@2e
    add-int v0, v1, p5

    #@30
    .line 93
    mul-int/lit8 v1, v0, 0x25

    #@32
    add-int v0, v1, p10

    #@34
    .line 94
    if-eqz p4, :cond_1

    #@36
    .line 95
    mul-int/lit8 v1, v0, 0x25

    #@38
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    #@3b
    move-result v2

    #@3c
    add-int v0, v1, v2

    #@3e
    .line 97
    :cond_1
    if-eqz p3, :cond_2

    #@40
    .line 98
    mul-int/lit8 v1, v0, 0x25

    #@42
    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->hashCode()I

    #@45
    move-result v2

    #@46
    add-int v0, v1, v2

    #@48
    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@4a
    if-eqz v1, :cond_3

    #@4c
    .line 101
    mul-int/lit8 v1, v0, 0x25

    #@4e
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@50
    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    #@53
    move-result v2

    #@54
    add-int v0, v1, v2

    #@56
    .line 103
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@58
    if-eqz v1, :cond_4

    #@5a
    .line 104
    mul-int/lit8 v1, v0, 0x25

    #@5c
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@5e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@61
    move-result v2

    #@62
    add-int v0, v1, v2

    #@64
    .line 106
    :cond_4
    mul-int/lit8 v2, v0, 0x25

    #@66
    if-eqz p2, :cond_6

    #@68
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    #@6b
    move-result v1

    #@6c
    :goto_1
    add-int v0, v2, v1

    #@6e
    .line 107
    mul-int/lit8 v1, v0, 0x25

    #@70
    add-int v0, v1, p1

    #@72
    .line 108
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    #@74
    .line 76
    return-void

    #@75
    .end local v0    # "hash":I
    :cond_5
    move-object v1, v2

    #@76
    .line 82
    goto :goto_0

    #@77
    .line 106
    .restart local v0    # "hash":I
    :cond_6
    const/4 v1, 0x0

    #@78
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "otherObj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 114
    if-nez p1, :cond_0

    #@3
    .line 115
    return v5

    #@4
    .line 118
    :cond_0
    :try_start_0
    move-object v0, p1

    #@5
    check-cast v0, Lcom/android/server/am/PendingIntentRecord$Key;

    #@7
    move-object v2, v0

    #@8
    .line 119
    .local v2, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    #@a
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    #@c
    if-eq v3, v4, :cond_1

    #@e
    .line 120
    return v5

    #@f
    .line 122
    :cond_1
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@11
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@13
    if-eq v3, v4, :cond_2

    #@15
    .line 123
    return v5

    #@16
    .line 125
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@18
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@1a
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 126
    return v5

    #@21
    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@23
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    #@25
    if-eq v3, v4, :cond_4

    #@27
    .line 129
    return v5

    #@28
    .line 131
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@2a
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    #@2c
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2f
    move-result v3

    #@30
    if-nez v3, :cond_5

    #@32
    .line 132
    return v5

    #@33
    .line 134
    :cond_5
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@35
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    #@37
    if-eq v3, v4, :cond_6

    #@39
    .line 135
    return v5

    #@3a
    .line 137
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@3c
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@3e
    if-eq v3, v4, :cond_8

    #@40
    .line 138
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@42
    if-eqz v3, :cond_7

    #@44
    .line 139
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@46
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@48
    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    #@4b
    move-result v3

    #@4c
    if-nez v3, :cond_8

    #@4e
    .line 140
    return v5

    #@4f
    .line 142
    :cond_7
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@51
    if-eqz v3, :cond_8

    #@53
    .line 143
    return v5

    #@54
    .line 146
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@56
    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    #@58
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5b
    move-result v3

    #@5c
    if-nez v3, :cond_9

    #@5e
    .line 147
    return v5

    #@5f
    .line 149
    :cond_9
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@61
    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@63
    if-eq v3, v4, :cond_a

    #@65
    .line 150
    return v5

    #@66
    .line 152
    :cond_a
    const/4 v3, 0x1

    #@67
    return v3

    #@68
    .line 153
    .end local v2    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_0
    move-exception v1

    #@69
    .line 155
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 159
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "Key{"

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, " pkg="

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 164
    const-string/jumbo v1, " intent="

    #@25
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 165
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 166
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    #@2f
    const/4 v2, 0x1

    #@30
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 163
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v0

    #@38
    .line 167
    const-string/jumbo v1, " flags=0x"

    #@3b
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v0

    #@3f
    .line 167
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    #@41
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@44
    move-result-object v1

    #@45
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v0

    #@49
    .line 167
    const-string/jumbo v1, " u="

    #@4c
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v0

    #@50
    .line 167
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    #@52
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v0

    #@56
    .line 167
    const-string/jumbo v1, "}"

    #@59
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v0

    #@61
    return-object v0

    #@62
    .line 166
    :cond_0
    const-string/jumbo v0, "<null>"

    #@65
    goto :goto_0
.end method

.method typeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 171
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    #@2
    packed-switch v0, :pswitch_data_0

    #@5
    .line 181
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    #@7
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 173
    :pswitch_0
    const-string/jumbo v0, "startActivity"

    #@f
    return-object v0

    #@10
    .line 175
    :pswitch_1
    const-string/jumbo v0, "broadcastIntent"

    #@13
    return-object v0

    #@14
    .line 177
    :pswitch_2
    const-string/jumbo v0, "startService"

    #@17
    return-object v0

    #@18
    .line 179
    :pswitch_3
    const-string/jumbo v0, "activityResult"

    #@1b
    return-object v0

    #@1c
    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
