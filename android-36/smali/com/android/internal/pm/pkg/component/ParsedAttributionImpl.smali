.class public Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
.super Ljava/lang/Object;
.source "ParsedAttributionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedAttribution;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist MAX_NUM_ATTRIBUTIONS:I = 0x190


# instance fields
.field private blacklist inheritFrom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist label:I

.field private blacklist tag:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 195
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "_tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .local v1, "_label":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v2, "_inheritFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 181
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    .line 182
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 184
    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    .line 185
    const-class v3, Landroid/annotation/StringRes;

    iget v4, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 187
    iput-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    .line 188
    const-class v3, Landroid/annotation/NonNull;

    iget-object v4, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-static {v3, v5, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/util/List;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "label"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    .local p3, "inheritFrom":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    .line 85
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 87
    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    .line 88
    const-class v0, Landroid/annotation/StringRes;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 90
    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    .line 91
    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getInheritFrom()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getLabel()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    return v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setInheritFrom(Ljava/util/List;)Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;"
        }
    .end annotation

    .line 148
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    .line 149
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 151
    return-object p0
.end method

.method public blacklist setLabel(I)Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
    .registers 5
    .param p1, "value"    # I

    .line 137
    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    .line 138
    const-class v0, Landroid/annotation/StringRes;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 140
    return-object p0
.end method

.method public blacklist setTag(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 126
    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    .line 127
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 129
    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 160
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->label:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedAttributionImpl;->inheritFrom:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 163
    return-void
.end method
