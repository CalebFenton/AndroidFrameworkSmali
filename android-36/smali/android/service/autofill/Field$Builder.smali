.class public final Landroid/service/autofill/Field$Builder;
.super Ljava/lang/Object;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDestroyed:Z

.field private blacklist mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

.field private blacklist mPresentations:Landroid/service/autofill/Presentations;

.field private blacklist mValue:Landroid/view/autofill/AutofillValue;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mValue:Landroid/view/autofill/AutofillValue;

    .line 113
    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 114
    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mPresentations:Landroid/service/autofill/Presentations;

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/autofill/Field$Builder;->mDestroyed:Z

    .line 118
    return-void
.end method

.method private blacklist checkNotUsed()V
    .registers 3

    .line 165
    iget-boolean v0, p0, Landroid/service/autofill/Field$Builder;->mDestroyed:Z

    if-nez v0, :cond_5

    .line 169
    return-void

    .line 166
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/service/autofill/Field;
    .registers 5

    .line 154
    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/Field$Builder;->mDestroyed:Z

    .line 157
    new-instance v0, Landroid/service/autofill/Field;

    iget-object v1, p0, Landroid/service/autofill/Field$Builder;->mValue:Landroid/view/autofill/AutofillValue;

    iget-object v2, p0, Landroid/service/autofill/Field$Builder;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    iget-object v3, p0, Landroid/service/autofill/Field$Builder;->mPresentations:Landroid/service/autofill/Presentations;

    invoke-direct {v0, v1, v2, v3}, Landroid/service/autofill/Field;-><init>(Landroid/view/autofill/AutofillValue;Landroid/service/autofill/Dataset$DatasetFieldFilter;Landroid/service/autofill/Presentations;)V

    .line 161
    .local v0, "o":Landroid/service/autofill/Field;
    return-object v0
.end method

.method public whitelist setFilter(Ljava/util/regex/Pattern;)Landroid/service/autofill/Field$Builder;
    .registers 3
    .param p1, "value"    # Ljava/util/regex/Pattern;

    .line 138
    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    .line 139
    new-instance v0, Landroid/service/autofill/Dataset$DatasetFieldFilter;

    invoke-direct {v0, p1}, Landroid/service/autofill/Dataset$DatasetFieldFilter;-><init>(Ljava/util/regex/Pattern;)V

    iput-object v0, p0, Landroid/service/autofill/Field$Builder;->mFilter:Landroid/service/autofill/Dataset$DatasetFieldFilter;

    .line 140
    return-object p0
.end method

.method public whitelist setPresentations(Landroid/service/autofill/Presentations;)Landroid/service/autofill/Field$Builder;
    .registers 2
    .param p1, "value"    # Landroid/service/autofill/Presentations;

    .line 147
    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    .line 148
    iput-object p1, p0, Landroid/service/autofill/Field$Builder;->mPresentations:Landroid/service/autofill/Presentations;

    .line 149
    return-object p0
.end method

.method public whitelist setValue(Landroid/view/autofill/AutofillValue;)Landroid/service/autofill/Field$Builder;
    .registers 2
    .param p1, "value"    # Landroid/view/autofill/AutofillValue;

    .line 126
    invoke-direct {p0}, Landroid/service/autofill/Field$Builder;->checkNotUsed()V

    .line 127
    iput-object p1, p0, Landroid/service/autofill/Field$Builder;->mValue:Landroid/view/autofill/AutofillValue;

    .line 128
    return-object p0
.end method
