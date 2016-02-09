.class public Landroid/app/VoiceInteractor$Prompt;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prompt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VoiceInteractor$Prompt$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/VoiceInteractor$Prompt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mVisualPrompt:Ljava/lang/CharSequence;

.field private final mVoicePrompts:[Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 873
    new-instance v0, Landroid/app/VoiceInteractor$Prompt$1;

    #@2
    invoke-direct {v0}, Landroid/app/VoiceInteractor$Prompt$1;-><init>()V

    #@5
    .line 872
    sput-object v0, Landroid/app/VoiceInteractor$Prompt;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 773
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 857
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequenceArray()[Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@9
    .line 858
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@f
    .line 856
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "prompt"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 804
    const/4 v0, 0x1

    #@4
    new-array v0, v0, [Ljava/lang/CharSequence;

    #@6
    const/4 v1, 0x0

    #@7
    aput-object p1, v0, v1

    #@9
    iput-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@b
    .line 805
    iput-object p1, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@d
    .line 803
    return-void
.end method

.method public constructor <init>([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "voicePrompts"    # [Ljava/lang/CharSequence;
    .param p2, "visualPrompt"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 786
    if-nez p1, :cond_0

    #@5
    .line 787
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "voicePrompts must not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 789
    :cond_0
    array-length v0, p1

    #@f
    if-nez v0, :cond_1

    #@11
    .line 790
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "voicePrompts must not be empty"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 792
    :cond_1
    if-nez p2, :cond_2

    #@1c
    .line 793
    new-instance v0, Ljava/lang/NullPointerException;

    #@1e
    const-string/jumbo v1, "visualPrompt must not be null"

    #@21
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@24
    throw v0

    #@25
    .line 795
    :cond_2
    iput-object p1, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@27
    .line 796
    iput-object p2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@29
    .line 785
    return-void
.end method


# virtual methods
.method public countVoicePrompts()I
    .locals 1

    #@0
    .prologue
    .line 820
    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 863
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getVisualPrompt()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 828
    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public getVoicePromptAt(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 813
    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x80

    #@5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 834
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v1}, Landroid/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    #@b
    .line 835
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@d
    if-eqz v2, :cond_1

    #@f
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@11
    if-eqz v2, :cond_1

    #@13
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@15
    array-length v2, v2

    #@16
    const/4 v3, 0x1

    #@17
    if-ne v2, v3, :cond_1

    #@19
    .line 836
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@1b
    iget-object v3, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@1d
    aget-object v3, v3, v4

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 835
    if-eqz v2, :cond_1

    #@25
    .line 837
    const-string/jumbo v2, " "

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    .line 838
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@30
    .line 851
    :cond_0
    const/16 v2, 0x7d

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@35
    .line 852
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v2

    #@39
    return-object v2

    #@3a
    .line 840
    :cond_1
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@3c
    if-eqz v2, :cond_2

    #@3e
    .line 841
    const-string/jumbo v2, " visual="

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@49
    .line 843
    :cond_2
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@4b
    if-eqz v2, :cond_0

    #@4d
    .line 844
    const-string/jumbo v2, ", voice="

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 845
    const/4 v0, 0x0

    #@54
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@56
    array-length v2, v2

    #@57
    if-ge v0, v2, :cond_0

    #@59
    .line 846
    if-lez v0, :cond_3

    #@5b
    const-string/jumbo v2, " | "

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    .line 847
    :cond_3
    iget-object v2, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@63
    aget-object v2, v2, v0

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@68
    .line 845
    add-int/lit8 v0, v0, 0x1

    #@6a
    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 868
    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVoicePrompts:[Ljava/lang/CharSequence;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequenceArray([Ljava/lang/CharSequence;)V

    #@5
    .line 869
    iget-object v0, p0, Landroid/app/VoiceInteractor$Prompt;->mVisualPrompt:Ljava/lang/CharSequence;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    #@a
    .line 867
    return-void
.end method
